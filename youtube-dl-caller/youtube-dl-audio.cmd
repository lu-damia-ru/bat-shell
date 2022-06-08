@ECHO OFF
CLS
COLOR 7C
ECHO     YOUTUBE AUDIO DOWNLOADER
ECHO.
ECHO ======================================================================================================================
ECHO.
SET /P url="[Enter video URL/list]: "
ECHO.
GOTO folder

rem testUrl=https://www.youtube.com/watch?v=CMKHQxvV7r8


:folder
ECHO.
SET /P folder="      Type folder to save to: "
ECHO.
GOTO selection


:selection
ECHO.
ECHO       1) Direct link
ECHO       2) With proxy
ECHO.
SET /P option="      Select option: "
IF %option% == 1 (GOTO direct)
IF %option% == 2 (GOTO withProxy)
ECHO.
ECHO   Error: Unknown value
GOTO selection




:direct
ECHO.
youtube-dl.exe --config-location ./youtube-dl-audio.conf -o "./%folder%/%%(title)s.%%(ext)s" %url%
GOTO fin

:withProxy
ECHO.
youtube-dl.exe --proxy http://utenze\h241035:Giu0606giu@itaca-prod.utenze.bankit.it:8080/ --config-location ./youtube-dl-audio.conf -o ./%folder%/%%(title)s.%%(ext)s %url%
GOTO fin

:fin
ECHO Done!
COLOR 07
PAUSE