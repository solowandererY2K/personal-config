@echo off

echo Linking VimRC configuration file...
set TARGET_FILE=%USERDIR%\.vimrc
IF NOT EXIST "%TARGET_FILE%" GOTO MakeSymlink
echo Backing up existing VimRC file...
move "%TARGET_FILE%" "%TARGET_FILE%.old"

:MakeSymlink
mklink "%TARGET_FILE%" "%CONFIG_DIR%\.vimrc"
IF %ERRORLEVEL% EQU 0 GOTO VimRCLinked
echo Failed to link VimRC file
EXIT /B

:VimRCLinked
