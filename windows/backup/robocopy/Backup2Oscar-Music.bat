rem see: http://www.matthewjmiller.net/files/backup_scripts/robocopy_backup.bat.txt

SET source="D:\Music"
SET destination="\\OSCAR\Home\media\audio"

SET logfile="D:\Scripts\Backup\Backup2Oscar-Music.log"

SET copyMode=/MIR /XF desktop.ini
SET options=/R:0 /W:0 /LOG+:%logfile% /NFL /NDL

".\Bin\Robocopy_Win7_x32.exe" %source% %destination% %copyMode% %options%
