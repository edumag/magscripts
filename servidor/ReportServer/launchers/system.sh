echo
echo "## Procesos ordenados por %MEM"
echo

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head

echo
echo "## free -mth"
echo

free -mth
