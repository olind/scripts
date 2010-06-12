rem see: http://www.matthewjmiller.net/files/backup_scripts/robocopy_backup.bat.txt

SET source="D:\Creations"
SET destination="..\..\Data\Robocopy\Creations"

SET logfile="Logs\Backup2Humle-Creations.log"

SET copyMode=/MIR /XF desktop.ini
SET options=/R:0 /W:0 /LOG+:%logfile% /NFL /NDL

".\Bin\Robocopy_Win7_x64.exe" %source% %destination% %copyMode% %options%
