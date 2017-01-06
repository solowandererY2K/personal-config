@echo off
set CONFIG_DIR=%~dp0
set USERDIR=%CONFIG_DIR%\..

call setup\chocolatey.cmd
call setup\vim.cmd
call setup\vimrc.cmd
call setup\vundle.cmd
call setup\conemu.cmd
call setup\fonts.cmd

