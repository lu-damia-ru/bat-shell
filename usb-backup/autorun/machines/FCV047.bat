@echo off
set dest=L:\Backup Strumenti\*.*

rem copia i backup sul disco di rete
call \autorun\modules\logger.bat INFO "Copying backup files in: %dest%"
copy \autorun\backup\*.zip "%dest%" >> \autorun\log\%computername%.log.txt

del \autorun\backup\*.zip
del \*xdat.exe
call \autorun\modules\logger.bat INFO "Removed zip&dat files."

color A
