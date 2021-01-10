ping localhost -n 10
Remove-Item -Path "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\rick-roll.exe" -Recurse
Remove-Item -Path C:\Windows\System32\rick-roll-remove.exe -Recurse
Remove-Item -Path $env:USERPROFILE\.rick-roll -Recurse
Remove-Item -Path $env:USERPROFILE\rem.ps1 -Recurse