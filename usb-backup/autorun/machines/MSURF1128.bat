@echo off
call avir.bat

echo.
echo.
color D
set /p addsdf=Includere i file SDF (S/N) ?
 
If /I %addsdf%==S (
echo S
	call backup.bat "D:\DATI_tarature\kapton DB"
)
If /I %addsdf%==N (
echo N
	call backup.bat "D:\DATI_tarature\kapton DB" -x *.sdf
)