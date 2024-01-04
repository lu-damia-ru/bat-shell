@ECHO OFF
CLS
COLOR 7C
ECHO.
ECHO.
ECHO     YOUTUBE AUDIO DOWNLOADER
ECHO.
ECHO ======================================================================================================================
ECHO.
SET /P url="[Enter video URL/list or type <m> for menu ]: "
ECHO %url%
IF /i "%url%" == "m" (GOTO menu)
GOTO nuovo


:nuovo
ECHO.
ECHO.
ECHO.
ECHO.
SET /P folder="[Type folder to save to ]: "
ECHO.
PAUSE
GOTO network

rem testUrl=https://www.youtube.com/watch?v=CMKHQxvV7r8
rem myurl=https://www.youtube.com/playlist?list=PL9u4YZN18435tu1jPn9wwwahgBqe_Q4QW


:menu
ECHO.
ECHO    1) Ecstatic Dance   - 'ecstatic'
ECHO    2) Disco/Techno     - 'truzza'
ECHO    3) Lindy Hop        - 'swing'
ECHO    4) Balboa           - 'balboa'
ECHO    5) Tango            - 'tango'
ECHO.
ECHO.
SET /P menu="[Enter predefined list ]: "
ECHO.
ECHO. 
IF %menu% == 1 (GOTO ecstatic)
IF %menu% == 2 (GOTO truzza)
IF %menu% == 3 (GOTO lindyhop)
IF %menu% == 4 (GOTO balboa)
IF %menu% == 5 (GOTO tango)
ECHO.
ECHO   Error: Unknown value
GOTO menu


:ecstatic
SET url=https://www.youtube.com/playlist?list=PL9u4YZN18435tu1jPn9wwwahgBqe_Q4QW
SET folder=ecstatic
GOTO network

:truzza
SET url=https://www.youtube.com/playlist?list=PL9u4YZN18436KADHpnqYCJaw3CB6vgS-d
SET folder=truzza
GOTO network

:lindyhop
SET url=https://www.youtube.com/playlist?list=PL9u4YZN18434gzMo2OU795uzOYkpVUtjq
SET folder=swing
GOTO network

:balboa
SET url=https://www.youtube.com/playlist?list=PL9u4YZN18437kdgtXO3HnITxpyuBq4bOp
SET folder=balboa
GOTO network

:tango
SET url=https://www.youtube.com/playlist?list=PL9u4YZN18434NO499gZWSscqvbfYFcBCP
SET folder=tango
GOTO network



:network
ECHO.
ECHO    1) Direct link
ECHO    2) With proxy
ECHO.
SET /P option="[Select connection mode ]: "
IF %option% == 1 (GOTO direct)
IF %option% == 2 (GOTO withProxy)
ECHO.
ECHO   Error: Unknown value
GOTO network



:direct
ECHO.
ECHO.
ECHO Saving into '%folder%' from '%url%':
ECHO.
yt-dlp.exe --no-check-certificate --config-locations ./youtube-dl-audio.conf -o d:/musica/%folder%/%%(title)s.%%(ext)s %url%
GOTO fin

:withProxy
ECHO.
ECHO.
ECHO Saving into '%folder%' from '%url%':
ECHO.
yt-dlp.exe --no-check-certificate --proxy http://utenze\***ute***:****pwd*****@itaca-prod.utenze.bankit.it:8080/ --config-locations ./youtube-dl-audio.conf -o d:/musica/%folder%/%%(title)s.%%(ext)s %url%
GOTO fin

:fin
ECHO Done!
COLOR 07
PAUSE