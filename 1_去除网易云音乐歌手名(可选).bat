@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0\music"
for %%f in (*.*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    
    rem ���� " - " ���ļ����е�λ��
    set "newname=!filename:* - =!"
    if "!newname!" neq "!filename!" (
        rem �������ļ�
        ren "%%f" "!newname!!extension!"
    )
)
endlocal
pause