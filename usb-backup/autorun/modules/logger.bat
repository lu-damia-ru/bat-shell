@echo off

rem %1 = status
rem %2 = message

echo %date%-%time% : %1 : %computername% : %2 >> %logpath%\%computername%.log.txt
echo %date%-%time% : %1 : %computername% : %2 >> %logpath%\MAIN.log.txt
echo %2