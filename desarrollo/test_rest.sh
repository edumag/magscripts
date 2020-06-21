#!/bin/bash

## @file test_rest.sh
## @brief Test rest service.
##
## Dependencies.
##
## pjson: sudo pip install pjson

## Configurations.

# Base URL of your web site.
# site_url="https://localhost/integralces"
site_url="http://test.integralces.net/testices"

# Path to temporary file which will store your cookie data.
cookie_path=/tmp/cookie

## Drupal authentication credentials.
# Normal user.
# username="Fermat"
# password="fermat"

# Admin user.
username="Riemann"
password="riemann"

exchange="NET1"

# Oauth2.
client_id="test_client"
client_secret="test_secret"
scope="cesrest"
scope_text="Access your account data"
endpoint_auth="${site_url}/oauth2/authorize"
endpoint_token="${site_url}/oauth2/token"
redirect_uri=http://localhost/headers.php
response_type=code
state=xyz
clientUri=
action=
# Endpoint. URL of your custom service.
service_url=$site_url/cesrest/

# Con estos datos y la extensión RESTClient podemos obtener un token.
# Que podemos pasar al script para testear.

# Register demo user.
test_user="user`date +%s`"
test_pass="test"
test_mail="`date +%s`@lesolivex.com"
test_town="les olivex"
test_postcode="12345"
test_firstname="firstname `date +%s`"

if [ -e /tmp/test_rest.token ] ; then
  authorization_access_token=`cat /tmp/test_rest.token`
fi

config_file=

# Actions.
declare -i actions=(users/$exchange accounts/$exchange accounts/$exchange/${exchange}0001 users/$exchange/3 users/create/$exchange)

# Others.
debug=FALSE
login=FALSE  ## TRUE / FALSE / LOGOUT

## Help.
function test_rest_help(){
echo "
Uso: test_rest.sh 

Options:

-d                     Debuger.
-l [option]            TRUE/FALSE/LOGOUT Default FALSE.
-at [token]            Authentication oauth2 token.
-ar [token]            Authentication oauth2 refresh.
-h                     This help.
-c [file conf]         File with another configuration.     
-a [action] [params]   Name scope and params.
                       Acciones prefijadas: ${actions[*]}


Para poder testear con este script es necesario crear un cliente en el servidor
con los datos de la configuración.

${site_url}/admin/structure/oauth2-servers/manage/cesrest/clients/add

Etiqueta: Test Client
Client ID: $client_id
Client secret: $client_secret
Redirect URIs: $redirect_uri (Opcional)

Conceder permisos a los usuarios registrados para utilizar oauth2

Use OAuth2 Server 

Uso del script:

Obtener un token del usuario $username con la extensión RESTClient
de firefox (www.restclient.net).

Para ello primero hay que logearse en integralces y pedir el token con la 
extensión restclient.

Desde restclient, vamos a Authentication / Oauth2

Rellenamos formulario con los siguientes datos:

- Response type: code
- Client identifier: $client_id
- Client secret: $client_secret
- Authorization endpoint: $endpoint_auth
- Token endpoint: $endpoint_token
- Access token request method: POST
- Redirection endpoint: $redirect_uri (Opcional)
- Access token scope: $scope
- State: $state

Enviar token al script:

$0 -at [token]

El token será guardado en un archivo temporal.

A partir de aquí se puede hacer pruebas con las diferentes acciones posibles.



"
}

## Save token.
function test_rest_save_token() {

  echo $authorization_access_token > /tmp/test_rest.token
  echo
  echo Token guardado.
  echo

}

## Execute login.
function test_rest_login() {
curl -k -X POST -H "Content-type: application/json" -c $cookie_path \
${service_url}user/login \
-d"
{
  \"username\":\"$username\",
  \"password\":\"$password\"
}"
}

## ... json
test_rest_json() {
  echo -e "$1" | pjson | grep $2 | cut -d: -f2 | cut -d\" -f2
}

## Execute action with oauth2.
function test_rest_curl_oauth2() {

  local action="$1"
  local data="${2:-FALSE}"
  local tmp="/tmp/`echo ${action} | tr / -`.html"

  cmd="-k " # Saltar certificado.

  [[ "$debug" == "FALSE" ]] && cmd="$cmd -s "
  [[ "$debug" == "TRUE" ]] && cmd="$cmd -v "
  [[ "$data" != "FALSE" ]]   && cmd="$cmd -d '$data'"

  curl \
    -H 'Content-type: application/json' \
    -H "Authorization: Bearer $authorization_access_token" \
    --cookie $cookie_path \
    $cmd \
    --request GET $action > $tmp

  cat $tmp | pjson

  echo
  echo Action: $action
  echo Salida: $tmp
  echo Access token: $authorization_access_token
  echo Opciones Curl: $cmd --request GET
  echo

  #exit # DEV
}
function test_rest_users_create() {

  local action="${service_url}users/create/$exchange"
  local cmd="-k " # Saltar certificado.
  local tmp="/tmp/create_user.html"

  [[ "$debug" == "FALSE" ]] && cmd="$cmd -s "
  [[ "$debug" == "TRUE" ]] && cmd="$cmd -v "

# curl \
#   -H 'Content-type: application/json' \
#   -H "Authorization: Bearer $authorization_access_token" \
#   --cookie $cookie_path \
#   $cmd \
#   -X POST \
#   ${service_url}user/create \
curl $cmd \
  -H "Content-type: application/json" \
  -H "Authorization: Bearer $authorization_access_token" \
  --cookie $cookie_path -X POST \
  $action \
-d"
{
  \"name\":\"$test_user\",
  \"pass\":\"$test_pass\",
  \"mail\":\"$test_mail\",
  \"status\":\"1\",
  \"language\":\"ca\",
  \"notify\":\"0\",
  \"town\": \"$test_town\",
  \"postcode\": \"$test_postcode\",
  \"firstname\": \"$test_firstname\"
}
" > $tmp

echo 
echo Salida: $tmp
echo

# Recogemos uid de usuario.
local USER_UID=`cat $tmp  | pjson | grep uid | cut -d: -f2 | sed 's/"//g' | sed 's/ //g'`

cat $tmp | pjson

echo
echo Action: $action
echo Salida: $tmp
echo Access token: $authorization_access_token
echo Opciones Curl: $cmd --request GET
echo
echo USER_UID: $USER_UID
echo

if [ "$USER_UID" != "" ] ; then
  test_rest_account_create $USER_UID
  test_rest_user_update $USER_UID
else
  echo
  echo Error: No user created
  echo
  exit
fi

}

function test_rest_user_update() {

  local USER_ID=$1

  local action="${service_url}users/update/$exchange/$USER_ID"
  local cmd="-k " # Saltar certificado.
  local tmp="/tmp/update_user.html"

  [[ "$debug" == "FALSE" ]] && cmd="$cmd -s "
  [[ "$debug" == "TRUE" ]] && cmd="$cmd -v "

  limitchain=0
  kind=0
  state=1

  user=$USER_UID

curl $cmd \
  -H "Content-type: application/json" \
  -H "Authorization: Bearer $authorization_access_token" \
  --cookie $cookie_path -X POST \
  $action \
-d"
{
  \"ces_phonehome\":\"972972972\",
  \"status\":\"0\"
}
" > $tmp

echo 
echo Salida: $tmp
echo

cat $tmp | pjson


echo
echo Action: $action
echo Salida: $tmp
echo Access token: $authorization_access_token
echo Opciones Curl: $cmd --request GET
echo

}


function test_rest_account_create() {

  local USER_UID=$1

  local action="${service_url}accounts/create/$exchange"
  local cmd="-k " # Saltar certificado.
  local tmp="/tmp/create_account.html"

  [[ "$debug" == "FALSE" ]] && cmd="$cmd -s "
  [[ "$debug" == "TRUE" ]] && cmd="$cmd -v "

  name=

  # @todo Especificar limitchain al crear cuenta.
  limitchain=0

  # kind: Tipos de cuenta.
  #
  # INDIVIDUAL = 0;
  # SHARED = 1;
  # ORGANIZATION = 2;
  # COMPANY = 3;
  # PUBLIC = 4;
  # VIRTUAL = 5;
  kind=0

  # state: Estados de cuenta.
  # HIDDEN = 0;
  # ACTIVE = 1;
  # LOCKED = 2;
  # CLOSED = 3;
  state=1

  user=$USER_UID

curl $cmd \
  -H "Content-type: application/json" \
  -H "Authorization: Bearer $authorization_access_token" \
  --cookie $cookie_path -X POST \
  $action \
-d"
{
  \"name\":\"$name\",
  \"limitchain\":\"$limitchain\",
  \"kind\":\"$kind\",
  \"state\":\"$state\",
  \"user\":\"$user\"
}
" > $tmp

echo 
echo Salida: $tmp
echo

# Recogemos uid de usuario.
local ACCOUNT_ID=`cat $tmp | pjson | grep '"account": "' | cut -d: -f2 | cut -d\" -f2`

cat $tmp | pjson


echo
echo Action: $action
echo Salida: $tmp
echo Access token: $authorization_access_token
echo Opciones Curl: $cmd --request GET
echo
echo ACCOUNT_ID: $ACCOUNT_ID
echo

test_rest_account_update $ACCOUNT_ID

}

function test_rest_account_update() {

  local ACCOUNT_ID=$1

  local action="${service_url}accounts/update/$exchange/$ACCOUNT_ID"
  local cmd="-k " # Saltar certificado.
  local tmp="/tmp/update_account.html"

  [[ "$debug" == "FALSE" ]] && cmd="$cmd -s "
  [[ "$debug" == "TRUE" ]] && cmd="$cmd -v "

  limitchain=0
  kind=0
  state=1

  user=$USER_UID

curl $cmd \
  -H "Content-type: application/json" \
  -H "Authorization: Bearer $authorization_access_token" \
  --cookie $cookie_path -X POST \
  $action \
-d"
{
  \"state\":\"0\",
  \"user\":\"1\"
}
" > $tmp

echo 
echo Salida: $tmp
echo

cat $tmp | pjson


echo
echo Action: $action
echo Salida: $tmp
echo Access token: $authorization_access_token
echo Opciones Curl: $cmd --request GET
echo

}

function test_rest_exec_action() {

  case $1 in
    "users/create/$exchange")
      test_rest_users_create "$2"
      ;;
    *)
      test_rest_curl_oauth2 ${service_url}${1} "$2"
      ;;
  esac

}

# Parameters.
while [ -n "$1" ] ; do
   case "$1" in
      -d)  debug=TRUE ; shift 1 ;;
      -a)  action=$2 ; shift 2 ;;
      -at) authorization_access_token=$2; 
           shift 2 ; 
           test_rest_save_token 
           test_rest_login
           exit
           ;;
      -ar) authorization_refresh_token=$2; shift 2 ;;
      -h)  test_rest_help; exit ;;
      -c)  source "$2" ; shift 2 ;;
      *)   parameters="$*" ; break ;;
   esac
done

if [ -z $authorization_access_token ] ; then
  echo
  echo Es necesario el token para poder hacer el test.
  echo
  echo Pantalla de ayuda:
  echo
  echo `basename $0` -h 
  echo
  exit 1
fi

[[ "$debug" == "TRUE" ]] && echo -e "\ncookie file: $cookie_path\n"


# Probando creación y modificación de usuarios y cuentas.
# test_rest_users_create ; exit # DEV

# Si no tenemos action las disparamos todas.
if [ -z $action ] ; then
  for a in ${actions[*]} ; do
    test_rest_exec_action $a "$parameters"
    read -p '[ENTER] Para continuar: ' OPCION

  done
else
  test_rest_exec_action ${action} "$parameters"
fi

