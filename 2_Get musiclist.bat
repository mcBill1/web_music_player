@echo off
setlocal enabledelayedexpansion
REM ��ʼ������
set "fileList="
REM ��������Ŀ¼��music�ļ����е�.mp3�ļ�
for /r %%d in (music) do (
    if exist "%%d" (
        for %%f in ("%%d\*.mp3") do (
            set "filename=%%~nxf"
            REM ���ļ�����ӵ��б���
            if defined fileList (
                set "fileList=!fileList!,'!filename!'"
            ) else (
                set "fileList='!filename!'"
            )
        )
    )
)
REM ���ļ����б�д��MusicList.txt����ʽΪ['a','b','c']
echo [!fileList!] > MusicList.txt
endlocal
pause