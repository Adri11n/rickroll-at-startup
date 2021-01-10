@echo off
title rick-roll-remove.exe
cls
:check
if not exist %userprofile%\.rick-roll (goto signup) else (goto login)


:signup
cls
title singup
echo enter now an username and an password to later remove the rick roll troll
echo.
echo.
set /p "user=New Username:>"
set /p "pass=New Password:>"
mkdir %userprofile%\.rick-roll
echo %user% > %userprofile%\.rick-roll\username.txt
echo %pass% > %userprofile%\.rick-roll\password.txt
ping localhost -n 3 > nul
cls
echo.
echo done now you can login
echo.
echo done
echo.
echo see you
pause
exit


:login
title login
cls
echo -------------------------------------------------
echo                       Login
echo -------------------------------------------------
set /p user=<%userprofile%\.rick-roll\username.txt
set /p pass=<%userprofile%\.rick-roll\password.txt
set /p "user1=Username:>"
set /p "pass1=Password:>"
if %user%==%user1% goto pass-require
goto error-user


:pass-require
if %pass%==%pass1% goto succes
goto error-pass


:succes
cls
title rick-roll-remove.exe

echo -------------------------------------------------
echo                       Done
echo -------------------------------------------------
echo.
echo               #
echo             #
echo     #     #            Login Successfully
echo      #  #
echo       #
echo.
echo.
echo -------------------------------------------------
ping localhost -n 3 > nul
cls
set /p "asw=do you want to remove the rick-roll (yes/no)?>"
if %asw%==yes goto remove
if %aws%==no goto END
goto error_input


:remove
cls
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%userprofile%\rem.ps1""'}"
taskkill /IM cmd.exe
exit


:error-user
cls
title error
echo.
echo invalide username
pause
goto login


:error-pass
cls
title error
echo.
echo invalide password
pause
goto login


:error_input
cls
title error
echo.
echo invalide input.
echo Press enter to go back to login.
pause >nul
goto echeck


:END
cls
title END
echo.
echo.
echo.
color C
echo 											script will end now.
ping localhost -n 5 >nul
exit
