# ReportServer

## Generar informe del estado del servior

Para ver una selección de buenos consejos podemos lanzar lynis.

Para ejecutar el informe:

`sudo ./reportServer`

Para enviarlo por mail:

`sudo ./launchers/fail2ban > /tmp/report.txt`

`mpack -s 'test' /tmp/report.txt edu@example.com`
