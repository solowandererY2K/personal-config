@echo off

echo Looking for ConEmu...
choco search --local-only --exact ConEmu | find "1 packages installed" > NUL
IF %ERRORLEVEL% EQU 0 GOTO SkipConemuInstall

echo Installing ConEmu...
choco install conemu
IF %ERRORLEVEL% EQU 0 GOTO FinishConemuInstall
echo Installing ConEmu FAILED.
EXIT /B

:FinishConemuInstall
echo ConEmu installed.
EXIT /B

:SkipConemuInstall
echo ConEmu already installed.

