@echo off
setlocal enabledelayedexpansion

set URL=http://localhost:8080

:loop
REM echo %date% %time%
curl -o nul -s -w "Total time: %%{time_total} seconds\n" %URL%
timeout /t 1 /nobreak > nul
goto loop

endlocal
