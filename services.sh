input="$1"

if [ -z "$input" ]; then

echo "Please enter the service you require, followed by [ENTER]: "
read input

fi

services(){
if [ "$input" == "+" ]; then
        service --status-all | grep "+"
elif [ "$input" == "-" ]; then
        service --status-all | grep " - "
else
        service --status-all | grep "$input"
fi
}


while :; do
   case $1 in
     -w)   # Write contents of Services function to a file in /home/tom/Documents, then exits
        echo "`services`\n" >>/home/tom/Documents/ServicesList.txt
        exit
        ;;
     *)
        echo "`services`\n"
   	exit
   esac

done


