wtr="$1"

if [ -z "$wtr" ]; then

echo "Please enter the service you require, followed by [ENTER]: "
read wtr

fi


curl wttr.in/$wtr
