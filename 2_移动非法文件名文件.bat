@echo off
setlocal enabledelayedexpansion
REM 检查是否存在disable_music文件夹，如果不存在则创建
if not exist "disable_music" (
    mkdir "disable_music"
)
REM 遍历music文件夹中的所有文件
cd /d "%~dp0\music"
for %%f in (*.*) do (
    set "filename=%%f"   
    REM 检查文件名是否包含 "[", "]" 或 ","
    echo !filename! | findstr /r /c:"[\[\]']" >nul
    if !errorlevel! == 0 (
        REM 移动文件到disable_music文件夹
        move "%%f" "%~dp0\disable_music\"
    )
)
endlocal
pause