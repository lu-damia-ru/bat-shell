@echo off
mode con cols=120 lines=60
color 0A

echo -----------------------------------------------------
echo  COPIA DI SINCRONIZZAZIONE FRA DUE CARTELLE - BACKUP
echo -----------------------------------------------------
echo.
echo.

setlocal

rem sorgente
echo  SORGENTE:
set source="D:\Progetti ACCESS"


echo            %source%
echo.
echo   "--->>"
echo.

rem destinazione
echo  DESTINAZIONE:
set destination=\\servvn1\FCVProgetCT\VAXPC\\"A_Settore_Ricerca e sviluppo\Luigi\Progetti ACCESS"

echo                %destination%
echo.
echo.
echo -----------------------------------------------------
echo.
echo.

setlocal enabledelayedexpansion

set /p verso=E' corretto il verso di copia (S/N) ?
 
If /I %verso%==S (
	robocopy %source% %destination% /xf .* /MIR /LOG:Windows_sync.txt /TEE /ETA /NP
)

If /I %verso%==N (
	echo -- Terminato --
	echo Rieseguire nuovamente per cambiare le cartelle.
)

endlocal
color 0B
pause