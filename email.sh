input="$1"

if [ -z "$input" ]; then

echo "Please enter the service you require, followed by [ENTER]: "
read input

fi

echo "Hi Tom.

I'm feeling fine now. Much better than I did before anyway.

Continuing to take it easy and take each day as it comes

$input

Much love

Tom" | ssmtp "tompalmer456@yahoo.com"


