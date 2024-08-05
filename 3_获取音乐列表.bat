@echo off
setlocal enabledelayedexpansion
REM 初始化变量
set "fileList="
REM 遍历所有目录下music文件夹中的.mp3文件
for /r %%d in (music) do (
    if exist "%%d" (
        for %%f in ("%%d\*.mp3") do (
            set "filename=%%~nxf"
            REM 将文件名添加到列表中
            if defined fileList (
                set "fileList=!fileList!,'!filename!'"
            ) else (
                set "fileList='!filename!'"
            )
        )
    )
)
REM 将文件名列表写入MusicList.txt，格式为['a','b','c']
echo [!fileList!] > MusicList.txt
endlocal
pause