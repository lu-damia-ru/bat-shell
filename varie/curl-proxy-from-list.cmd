@echo off
setlocal ENABLEDELAYEDEXPANSION

rem === CONFIGURAZIONE PROXY ===
set PROXY=http://itaca-prod.utenze.bankit.it:8080

rem === USERNAME = utente Windows corrente ===
set USERNAME=%USERNAME%

rem === PASSWORD (prompt) ===
set /p PASSWORD=Inserisci password proxy per %USERNAME%: 

echo.
echo Download in corso...
echo.

for /f "usebackq delims=" %%i in ("url_list.txt") do (
    curl -x %PROXY% -U %USERNAME%:!PASSWORD! -L -O "%%i"
)

echo.
echo Operazione completata.
pause