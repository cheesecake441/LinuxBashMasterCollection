input="$1"

if [ -z "$input" ]; then

echo "Please enter your search term: "
read input
fi

sudo find / | grep $input


