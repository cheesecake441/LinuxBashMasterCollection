# Linux Bash Master Collection
##**Because if you have to type it more than twice a day, its probably worth automating**

##tl;dr
Simply copy and paste this command to install the collection
`curl http://tpalmer.info/applications/scripts/installer.sh | sh`

##Introduction
As I primarily use a LAMP stack to develop and work on projects, I have created a number of bash scripts over the years that help increase the automation of certain processes and the functionality of others.

##Download Latest Version
Again, simply copy and paste this command:
`curl http://tpalmer.info/applications/scripts/installer.sh | sh`

###Requirements
`sudo apt-get install dig`

###Easy Installation
`curl http://tpalmer.info/applications/scripts/installer.sh | sh`

###Advanced Installation
```
mkdir ~/Scripts
cd ~/Scripts
wget http://tpalmer.info/applications/scripts/linuxbashmastercollection.tar.gz
tar -xzvf linuxbashmastercollection.tar.gz
rm -rf linuxbashmastercollection.tar.gz
sudo ~/Scripts/symlink.sh
```

##License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.

##Acknowledgments
@JesusChrist
