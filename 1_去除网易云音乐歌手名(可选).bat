@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0\music"
for %%f in (*.*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    
    rem 查找 " - " 在文件名中的位置
    set "newname=!filename:* - =!"
    if "!newname!" neq "!filename!" (
        rem 重命名文件
        ren "%%f" "!newname!!extension!"
    )
)
endlocal
pause