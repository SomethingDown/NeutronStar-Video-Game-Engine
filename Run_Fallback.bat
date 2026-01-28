@echo off
cd /d "%~dp0"

java -cp "Libs\*;Bin" Game.Core.GameEntry

pause