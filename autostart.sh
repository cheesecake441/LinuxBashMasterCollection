service="$1"

if [ -z "$service" ]; then

echo "Please enter the service you require, followed by [ENTER]: "
read service

fi
service --status-all | grep "$service" >/home/tom/Documents/.grep_results.txt

if grep -q "+" /home/tom/Documents/.grep_results.txt; then
	echo "The service is already started!!"
else 
	sudo service $service start
fi


service --status-all | grep "$service"


