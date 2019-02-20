echo "Enter folder to backup: "
read dir

echo "Enter a Filename: "
read name

date=$(date +%d.%m.%y)
comp=$(hostname)

naming=$(echo $comp.Backup.$date.$name)

tar -czvf $naming.tar.gz $dir

mv /home/tom/$naming.tar.gz /home/tom/Backup


findLast() {
for file in /home/tom/Backup/*.tar.gz
    do
echo $file

    done  | sort -t'.' -k6  |tail -1

}

cp `findLast` /media/tom/storage/Backup/$naming.tar.gz
scp `findLast` root@192.168.8.191:/home/tom/Backup/$naming.tar.gz
