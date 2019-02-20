##A Backup Script created by Satisnet for transferring backup tarballs from the default QRadar directory [in the findlast function] to a custom directory [in the 'cp findLast' function]. The script will then check for the files existence within the destination folder and, if the file was succesfully transferred- writes a succes line to a CSV file located in the Qradar backup directory. If the file is not found in the destination folder, a seperate file is written to the qradar backup directory.

findLast() {
for file in /store/backup/*.tgz
    do
echo $file

    done  | sort -t'.' -k6  |tail -1

}



cp `findLast` /nfs_haydn ##The directory the backups will be transferred to

if [ "$?" -eq 0 ]; then
  echo "$(date +"%x %r %Z")  Backup was copied succesfully" >> /store/backup/BackupTransfer.csv ##The directory the CSV will be written to
else
  echo "$(date +"%x %r %Z")  Backup was not succesful, please check backup was run and try again." >> /store/backup/TransferError.txt ##The directory the error file will be transferred to.

fi
