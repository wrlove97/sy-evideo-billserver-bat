@Echo off&Title BillServer�����Զ������������� by:Ryan
mode con cols=52 lines=30
color 2F
>nul 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>nul
    Exit /b
)
:Menu
Cls
Echo.
Echo.&Echo     ���ȹر����з�����Զ�����ѡ����ʹ�øýű���
Echo.
Echo.&Echo     ��ӹ���ϵͳ �� 1
Echo.&Echo     ͨ�����ϵͳ �� 2
Echo.&Echo     Ӯ�����ϵͳ �� 3
Echo.&Echo     ��ͨ����ϵͳ �� 4
Echo.&Echo     �������ļ��� �� 5
Echo.&Echo     �˳� �� 6
Echo.
:Menu
Set /p a=�������ְ��س���
If "%a%"=="1" Goto START
If "%a%"=="2" Goto START
If "%a%"=="3" Goto START
If "%a%"=="4" Goto START
IF "%a%"=="5" Goto OPDIR
IF "%a%"=="6" Goto END
Echo.&Echo ������Ч�����������룡
pause >nul
Goto Menu
:START
set F="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\start.bat"
DEL /f /q /s %F% >nul
Echo @echo off >>%F%
Echo Title ������������ by:Ryan >>%F%
Echo mode con cols=52 lines=30 >>%F%
Echo color 1F >>%F%
Echo echo. >>%F%
Echo echo  ************************************************ >>%F%
Echo echo  *                                              * >>%F%
Echo echo  *                                              * >>%F%
Echo echo  *            ���������У����Եȡ�����          * >>%F%
Echo echo  *                                              * >>%F%
Echo echo  *                                              * >>%F%
Echo echo  ************************************************ >>%F%
Echo echo. >>%F%
Echo echo. >>%F%
Set disk=D
Choice /C CDE /M �����������װĿ¼���ڵ��̷�(C��D��E)(Ĭ��ΪD)
if errorlevel 3 (set disk=E) else if errorlevel 2 (set disk=D) else if errorlevel 1 (set disk=C)
If "%a%"=="1" Goto YJ
If "%a%"=="2" Goto TY
If "%a%"=="3" Goto YY
If "%a%"=="4" Goto JT
:YJ
Echo.&Echo ��ȷ�����ϵͳ��װ��"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo �����ÿ���30����Զ�����"��ӷ��������"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo ����������ӷ��������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �Ƿ����������ӡ��������
Set /p prt=����y����/���������������
if "%prt%"=="y" Echo.&Echo �����ÿ���60����Զ�����"�����ӡ������" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo �������������ӡ������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\Part_YTNetPrint.exe >>%F% & Echo echo. >>%F%
Echo echo.^&echo^ ����������ɡ� >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:TY
Echo.&Echo ��ȷ��ͨ��ϵͳ��װ��"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo �����ÿ���30����Զ�����"ͨ����������"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo ��������ͨ����������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �Ƿ����������ӡ��������
Set /p prt=����y����/���������������
if "%prt%"=="y" Echo.&Echo �����ÿ���60����Զ�����"�����ӡ������" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo �������������ӡ������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\Part_YTNetPrint.exe >>%F% & Echo echo. >>%F%
Echo echo.^&echo^ ����������ɡ� >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:YY
Echo.&Echo ��ȷ��Ӯ��ϵͳ��װ��"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo �����ÿ���30����Զ�����"Ӯ����������"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo ��������Ӯ����������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �Ƿ����������ӡ��������
Set /p prt=����y����/���������������
if "%prt%"=="y" Echo.&Echo �����ÿ���60����Զ�����"�����ӡ������" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo �������������ӡ������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\Part_YTNetPrint.exe >>%F% & Echo echo. >>%F%
Echo echo.^&echo^ ����������ɡ� >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:JT
Echo.&Echo ��ȷ�Ͼ�ͨϵͳ��װ��"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo �����ÿ���30����Զ�����"�������������"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo ���������������������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\BillServer.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �����ÿ���60����Զ�����"��̬�Զ�������"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo ����������̬�Զ�������... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start /min %disk%:\eVideo\BillSystem\KTV_AutoDeal.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �����ÿ���70����Զ�����"С������"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo ��������С������... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �Ƿ����������ӡ����ˣ�
Set /p prt=����y����/���������������
if "%prt%"=="y" Echo.&Echo �����ÿ���80����Զ�����"�����ӡ�������" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo �������������ӡ�����... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\KTV_NetComBarCounter.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �Ƿ��������ŷ���ˣ�
Set /p sms=����y����/���������������
if "%sms%"=="y" Echo.&Echo �����ÿ������Զ�����"�ֵ���ŷ����" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo �����������ŷ����... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\KTV_NewNoteServer.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo �Ƿ�����ADServer��(�뽫"ktv"Ŀ¼�ŵ�"%disk%:\eVideo\"��)
Set /p ad=����y����/���������������
if "%ad%"=="y" Echo.&Echo �����ÿ������Զ�����"ADServer����" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo ��������ADServer... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start /min %disk%:\eVideo\ktv\bin\ADServer.exe >>%F% & Echo echo. >>%F%
Echo.
Echo echo.^&echo^ ����������ɡ� >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:Finish
Echo.&Echo                ���...
ping -n 3 10>nul
Goto END
:OPDIR
explorer %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
Goto Menu
:END
exit