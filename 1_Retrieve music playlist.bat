@echo off
setlocal enabledelayedexpansion
REM ����Ƿ����disable_music�ļ��У�����������򴴽�
if not exist "disable_music" (
    mkdir "disable_music"
)
REM ����music�ļ����е������ļ�
cd /d "%~dp0\music"
for %%f in (*.*) do (
    set "filename=%%f"   
    REM ����ļ����Ƿ���� "[", "]" �� ","
    echo !filename! | findstr /r /c:"[\[\]']" >nul
    if !errorlevel! == 0 (
        REM �ƶ��ļ���disable_music�ļ���
        move "%%f" "%~dp0\disable_music\"
    )
)
endlocal
pause