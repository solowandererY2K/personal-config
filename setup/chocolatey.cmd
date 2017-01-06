@echo off
echo Checking for Chocolatey NuGet...
where choco
IF %ERRORLEVEL% EQU 0 GOTO SkipChocolateyInstall

echo Installing Chocolatey NuGet...
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

set PATH=%PROGRAMDATA%\Chocolatey\bin;%PATH%
where choco
IF %ERRORLEVEL% EQU 0 GOTO SkipChocolateyInstall

echo Installing Chocolatey FAILED.
EXIT /B

:SkipChocolateyInstall

