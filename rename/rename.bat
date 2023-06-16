@echo off
setlocal enabledelayedexpansion

set /p "prefix=Enter prefix for renaming: "
set counter=1

for %%F in (*) do (
    if "%%~xF" neq "" (
        set "extension=%%~xF"
        set "new_name=!prefix!!counter!!extension!"
        ren "%%F" "!new_name!"
        echo Renamed '%%F' to '!new_name!'
        set /a "counter+=1"
    )
)
