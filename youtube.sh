addr="$1"

if [ -z "$addr" ]; then

echo "Please enter the service you require, followed by [ENTER]: "
read addr

fi


youtube-dl --extract-audio --audio-format mp3 $addr
