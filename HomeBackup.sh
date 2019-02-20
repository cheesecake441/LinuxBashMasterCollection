date=$(date +%d.%m.%y)
comp=$(hostname)

naming=$(echo $comp.Backup.$date.HomeFolder)

tar -czvf $naming.tar.gz /home/tom

mv /home/tom/$naming.tar.gz /home/tom/Backup


findLast() {
for file in /home/tom/Backup/*.tar.gz
    do
echo $file

    done  | sort -t'.' -k6  |tail -1

}

cp `findLast` /media/tom/Storage/Backup/$naming.tar.gz
scp `findLast` root@192.168.8.191:/home/tom/Backup/$naming.tar.gz
