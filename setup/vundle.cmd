@echo off

set VUNDLE_DIR=%USERDIR%\.vim\bundle\Vundle.vim
IF EXIST "%VUNDLE_DIR%" GOTO SkipVundleInstall
echo Installing Vundle...
git clone https://github.com/VundleVim/Vundle.vim.git %USERDIR%\.vim\bundle\Vundle.vim
IF %ERRORLEVEL% EQU 0 GOTO InstallVundlePlugins
echo Cloning Vundle FAILED.
EXIT /B

:SkipVundleInstall

:InstallVundlePlugins
echo Installing all Vim plugins using Vundle...
vim +PluginInstall +qall
IF %ERRORLEVEL% EQU 0 GOTO FinishVundleInstall
echo Installing Vim plugins FAILED.
EXIT /B

:FinishVundleInstall

