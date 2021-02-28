@echo off
set logpath=\autorun\log\
set backuppath=\autorun\backup\

set path=%path%;\autorun\modules;\autorun\machines


echo ------------------------------------------------------
echo.
echo   Divisione RPP - Settore ReS
echo.
echo  Sistema di backup automatico per strumenti di misura
echo.
echo.
echo ---------------------------
echo  Macchina: %computername%
echo  Operatore: %username%
echo  Data: %date%
echo  Ora: %time%
echo ------------------------------------------------------
echo.
echo.
call logger.bat INFO "Init on machine: %computername%"
call %computername%.bat
echo.
color A
pause