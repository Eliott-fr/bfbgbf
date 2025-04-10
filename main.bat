@echo off
:loop
tasklist /FI "IMAGENAME eq FiveM.exe" 2>NUL | find /I /N "FiveM.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo FiveM.exe est en cours d'exécution. Attente de 30 secondes...
    timeout /t 30
    taskkill /F /IM FiveM.exe
    echo FiveM.exe a été fermé. Ouverture de la page web...
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ
    exit
)
timeout /t 5
goto loop
