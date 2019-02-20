pkg="$1"

if [ -z "$pkg" ]; then

echo "Please enter the package to be downloaded, followed by [ENTER]: "
read pkg

fi

sudo apt-get install $pkg -y
