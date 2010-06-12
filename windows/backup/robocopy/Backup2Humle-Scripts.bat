rem see: http://www.matthewjmiller.net/files/backup_scripts/robocopy_backup.bat.txt

SET source="D:\Scripts"
SET destination="..\..\Data\Robocopy\Scripts"

SET logfile="Logs\Backup2Humle-Scripts.log"

SET copyMode=/MIR /XF desktop.ini
SET options=/R:0 /W:0 /LOG+:%logfile% /NFL /NDL

".\Bin\Robocopy_Win7_x64.exe" %source% %destination% %copyMode% %options%
