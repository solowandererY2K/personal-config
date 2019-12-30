call %USERPROFILE%\system-paths.cmd

REM A personal tool should NOT be something a project specifically
REM requires, such as a specific version control system.
set PERSONAL_TOOL_PATHS=%VIM_PATH%

prompt $P$_$G$S
