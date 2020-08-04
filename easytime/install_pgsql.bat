@echo off
cd /d %~dp0
set path=%windir%\system32;%path%
"%cd%\pgsql\bin\pg_ctl.exe" register -N "bio-pgsql" -D "%cd%\pgsql\data" -l "%cd%\pgsql\logfile"

sc description bio-pgsql "ZKTECO India"
net start "bio-pgsql"
