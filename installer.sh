sleep 2
echo "One Time Script Activated..."
sleep 2
clear

sleep 2
echo "Beginning Upgrades..."
sleep 2
sudo apt-get update -y
sudo apt-get upgrade -y
sleep 2

echo "System was updated successfully..."
sleep 2
echo "

Installing Packages

"
read pkg
sleep 2

sudo apt-get install cowsay fortune figlet toilet openssh-server ruby lsb-release sshpass expect $pkg
sleep 1

echo "

Packages were successfully installed...

"
sleep 2

echo "Updating terminal. Please enter your computer name..."
read name
sleep 2

sudo echo "echo 'Welcome to...'">>~/.bashrc
sudo echo "toilet -f small -F gay '$name'">>~/.bashrc
sudo echo "fortune -S | cowsay">>~/.bashrc

sleep 2
echo "Terminal successfully updated..."
sleep 2

clear
sleep 2
echo "We're almost done..."
sleep 2
echo "Creating Symbolic Links..."
/home/tom/Scripts/symlink.sh
sleep 2
echo "Symbolic Links have been successfully created"
sleep 2
echo "Checking..."
/home/tom/Scripts/progress.sh

echo "Your $name Linux Box has been successfully Cheesecaked. Please press [ENTER] to reboot"
read inp

if [ -z "$inp" ]; then
	sudo reboot
else
	echo "Shutdown aborted! Please poweroff manually..."
fi
