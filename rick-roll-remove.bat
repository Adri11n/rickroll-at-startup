::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBZVTwWGAEW/HqEf5Ofu69awrV8ZRPA6a5znyaCPMvQG+gj2fJUmm2hVlMdBHxRNbBGuLgw7rWt+pG2GPIqOvAPtB1qM60QmHitxn2aw
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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