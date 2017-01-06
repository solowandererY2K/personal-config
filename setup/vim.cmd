@echo off

echo Checking for Vim...
where gvim
IF %ERRORLEVEL% EQU 0 GOTO VimExists

echo Installing Vim...
choco install vim
IF %ERRORLEVEL% EQU 0 GOTO FinishedVimInstall

echo Installing Vim FAILED.
EXIT /B

:FinishedVimInstall
call RefreshEnv
where gvim
IF %ERRORLEVEL% EQU 0 GOTO SkipVimInstall
echo Could not find Vim after install.
EXIT /B

:VimExists
echo Vim is already installed.

:SkipVimInstall

