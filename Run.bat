::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5ZSRaKAE+1EbsQ5+n//Naur0waUfFxcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
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
::Zh4grVQjdCuDJHqL8Es+Lyd+WRSbKG6oOoYJ5eX6/eOdp18iY+0tc7D61rGLOuEv2VDpeJc/32BfivQtHAsWewquDg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
REM Get the directory of the currently executing batch file
set SCRIPT_DIR=%~dp0
cd /d "%SCRIPT_DIR%"

REM Start the Flask app in a new command prompt window
start "" cmd /c "python app.py"

echo 10 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 9 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 8 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 7 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 6 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 5 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 4 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 3 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 2 Seconds Remaining
timeout /t 1 /nobreak > nul
echo 1 Seconds Remaining
timeout /t 1 /nobreak > nul


REM Open the default web browser to the Flask app URL
start http://127.0.0.1:5000

REM Exit the batch file, which will close the command prompt window
exit