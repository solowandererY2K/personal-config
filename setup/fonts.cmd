@echo off

echo Ensuring that all fonts exist...
pushd fonts
for /r %%G in (*.ttf) do (
  set MissingFont=%%~nxG
  if not exist "%WINDIR%\Fonts\%MissingFont%" goto InstallFonts
)
popd

echo All fonts are installed already!
EXIT /B

:InstallFonts
echo Font %MissingFont% was missing.
popd

echo Installing fonts...
@powershell -ExecutionPolicy Bypass -File install-fonts.ps1
