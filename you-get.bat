@echo off
::�趨You-Get��Youtube-DL��λ�ã����Ը����Լ���python��װĿ¼�޸�
set youget=C:\Users\spiri\AppData\Local\Programs\Python\Python37\Scripts\you-get.exe
set youtubedl=C:\Users\spiri\AppData\Local\Programs\Python\Python37\Scripts\youtube-dl.exe

echo.&echo.��Ƶ���ع��ߣ�������You-Get��Youtube-DL����ý��
:X
echo.&echo.
set /p URL=������ҪURL���س�:

echo engine List
echo 1.You-Get
echo 2.Youtube-DL
echo 3.���£���װ����������
set /p engine=��ѡ����������������
if="%engine%"=="1" goto A
if="%engine%"=="2" goto B
if="%engine%"=="3" goto C

:A
echo You-Get List
echo 10.You-Get   ���ص�C:\You-Get\Download����ʹ�ô���
echo 11.You-Get   ���ص�C:\You-Get\Download��ʹ�ô���
set /p choose=��ѡ����Ӧ�Ĵ���ʽ��
if "%choose%"=="11" set OP=--socks-proxy 127.0.0.1:1080

:YouGetDown
%youget% %OP% %URL% -i
set /p itag=��ѡ��Ҫ���ص�itag��

%youget% %OP% --itag=%itag% %URL% -o C:\You-Get\Download
goto X

:B
echo YoutubeDL List
echo 20.YoutubeDL ���ص�C:\You-Get\Download����ʹ�ô���
echo 21.YoutubeDL ���ص�C:\You-Get\Download��ʹ�ô���
set /p choose=��ѡ����Ӧ�Ĵ���ʽ��
if "%choose%"=="21" set OP1= --proxy socks5://127.0.0.1:1080

:youtubedlDown
%youtubedl% %OP1% -F %URL%  
set /p itag=��ѡ�Լ�����ϣ��м��üӺţ���

%youtubedl% -f %itag% %URL% -o "C:\You-Get\Download\%%(title)s.%%(ext)s"
goto X

:C
pip3 install you-get
pip3 install --upgrade you-get
pip3 install youtube-dl
pip3 install --upgrade youtube-dl
goto X