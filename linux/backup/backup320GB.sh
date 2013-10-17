#!/bin/bash

startTime="$(date)"
logFile="/var/log/backup320GB"
device="/dev/sdb1"
mount="/mnt/sdb1"

echo "Backup started on: $startTime" > $logFile

echo "Mounting backup device $device on $mount" >> $logFile
mount $device $mount

# A trailing / in the source means that the files in the directory should be copied but not the directory
# Note the difference between /home and the other rsyncs

echo "" >> $logFile
rsync -av --delete /home $mount >> $logFile
echo "" >> $logFile
rsync -av --delete /etc $mount >> $logFile
echo "" >> $logFile
rsync -av --delete /root $mount >> $logFile
echo "" >> $logFile
rsync -av --delete /var $mount >> $logFile
echo "" >> $logFile
rsync -av --delete /usr $mount >> $logFile

touch "$mount/00-lastBackup-${startTime}"

echo "" >> $logFile
echo "Backup completed on: $(date)" >> $logFile

echo "Unmounting backup device $device on $mount" >> $logFile
umount $mount >> $logFile

# todo: move and gzip logfile