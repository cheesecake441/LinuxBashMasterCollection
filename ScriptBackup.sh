date=$(date +%d.%m.%y)
comp=$(hostname)

md5sum * /home/tom/Scripts/* >/home/tom/Scripts/md5sum.txt

naming=$(echo $comp.Backup.$date.ScriptsFolder)

tar -C /home/tom/Scripts -czf $naming.tar.gz .

mv /home/tom/$naming.tar.gz /home/tom/Backup

findLast() {
for file in /home/tom/Backup/*.tar.gz
    do
echo $file

    done  | sort -t'.' -k6  |tail -1

}


/usr/bin/expect<<EOF
spawn scp `findLast` tom@cheesecakeproductions.com:/home/tom/Backup/$naming.tar.gz
expect "tom@cheesecakeproductions.com's password: "
send "reverse\r"
expect eof
EOF

