cls
@echo off
cd /d %~dp0
call init.bat
python manage.py migrate
pause
