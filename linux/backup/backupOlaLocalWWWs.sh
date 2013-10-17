#!/bin/bash

							logFile="/home/ola/tmp/logf.txt" #"/var/log/backupOlaLocalWWWs"
								 nice="/usr/bin/nice -n 19";
								 
				 backupFolder="/home/ola/Backup"
							
						wwwFolder="/home/ola/www"
			wwwBackupFolder="/home/ola/Backup/www"
			
 wwwBackupFilesFolder="/home/ola/Backup/www/files"

function echo {
  /bin/echo `date` $* | tee -a foo.log
}

function rsyncAllFiles() {
	# A trailing / in the source means that the files in the directory 
	# should be copied but not the directory
	echo "rsyncAllFiles: from $wwwFolder to $wwwBackupFilesFolder"  >> $logFile
	rsync -av --delete $wwwFolder/ $wwwBackupFilesFolder >> $logFile
}

function gzipAll() {
	echo "gzipAll"  >> $logFile
	d=`date '+%y%m%d-%H%M%S'`
	$nice /bin/tar -cvzpf $backupFolder/www-$d.tgz $wwwBackupFolder
}

function pairprogrammingnet_dumpBackup() {
	dumpBackup_Path="/home/ola/www/pairprogramming.net/wiki/maintenance/dumpBackup.php --full";
	dumpBackup_OutFile="/home/ola/Backup/www/exports/pairprogramming.net/dumbBackup.xml";
	
	echo "pairprogrammingnet_dumpBackup"  >> $logFile
	$nice php $dumpBackup_Path > $dumpBackup_OutFile;
}

echo "backupOlaLocalWWWs started on: $(date)" > $logFile
rsyncAllFiles
pairprogrammingnet_dumpBackup
gzipAll
#"todo: dbBackup"; #http://www.mediawiki.org/wiki/Manual:Backing_up_a_wiki
echo "backupOlaLocalWWWs completed on: $(date)" >> $logFile

#startTimeFileName=`date '+%y%m%d-%H%M%S'`
#touch $wwwBackupFolder/$startTimeFileName-LastBackupStarted
