rem @echo off
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

call logger.bat INFO "Backup: %computername%.%mydate%.zip %1 %2 %3"
zip.exe -r9 %backuppath%\%computername%.%mydate%.zip %1 %2 %3