@Echo off&Title BillServer开机自动启动设置引导 by:Ryan
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
Echo.&Echo     请先关闭所有服务的自动启动选项再使用该脚本！
Echo.
Echo.&Echo     娱加管理系统 → 1
Echo.&Echo     通娱管理系统 → 2
Echo.&Echo     赢娱管理系统 → 3
Echo.&Echo     精通管理系统 → 4
Echo.&Echo     打开启动文件夹 → 5
Echo.&Echo     退出 → 6
Echo.
:Menu
Set /p a=输入数字按回车：
If "%a%"=="1" Goto START
If "%a%"=="2" Goto START
If "%a%"=="3" Goto START
If "%a%"=="4" Goto START
IF "%a%"=="5" Goto OPDIR
IF "%a%"=="6" Goto END
Echo.&Echo 输入无效，请重新输入！
pause >nul
Goto Menu
:START
set F="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\start.bat"
DEL /f /q /s %F% >nul
Echo @echo off >>%F%
Echo Title 服务启动程序 by:Ryan >>%F%
Echo mode con cols=52 lines=30 >>%F%
Echo color 1F >>%F%
Echo echo. >>%F%
Echo echo  ************************************************ >>%F%
Echo echo  *                                              * >>%F%
Echo echo  *                                              * >>%F%
Echo echo  *            服务启动中，请稍等。。。          * >>%F%
Echo echo  *                                              * >>%F%
Echo echo  *                                              * >>%F%
Echo echo  ************************************************ >>%F%
Echo echo. >>%F%
Echo echo. >>%F%
Set disk=D
Choice /C CDE /M 请输入软件安装目录所在的盘符(C、D、E)(默认为D)
if errorlevel 3 (set disk=E) else if errorlevel 2 (set disk=D) else if errorlevel 1 (set disk=C)
If "%a%"=="1" Goto YJ
If "%a%"=="2" Goto TY
If "%a%"=="3" Goto YY
If "%a%"=="4" Goto JT
:YJ
Echo.&Echo 请确认娱加系统安装在"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo 已设置开机30秒后自动启动"娱加服务管理器"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动娱加服务管理器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 是否启动网络打印服务器？
Set /p prt=输入y启动/输入任意键不启动
if "%prt%"=="y" Echo.&Echo 已设置开机60秒后自动启动"网络打印服务器" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动网络打印服务器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\Part_YTNetPrint.exe >>%F% & Echo echo. >>%F%
Echo echo.^&echo^ 服务启动完成。 >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:TY
Echo.&Echo 请确认通娱系统安装在"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo 已设置开机30秒后自动启动"通娱服务管理器"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动通娱服务管理器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 是否启动网络打印服务器？
Set /p prt=输入y启动/输入任意键不启动
if "%prt%"=="y" Echo.&Echo 已设置开机60秒后自动启动"网络打印服务器" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动网络打印服务器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\Part_YTNetPrint.exe >>%F% & Echo echo. >>%F%
Echo echo.^&echo^ 服务启动完成。 >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:YY
Echo.&Echo 请确认赢娱系统安装在"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo 已设置开机30秒后自动启动"赢娱服务管理器"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动赢娱服务管理器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 是否启动网络打印服务器？
Set /p prt=输入y启动/输入任意键不启动
if "%prt%"=="y" Echo.&Echo 已设置开机60秒后自动启动"网络打印服务器" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动网络打印服务器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\Part_YTNetPrint.exe >>%F% & Echo echo. >>%F%
Echo echo.^&echo^ 服务启动完成。 >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:JT
Echo.&Echo 请确认精通系统安装在"%disk%:\eVideo\BillSystem\"
Echo.
pause
Echo. 
Echo.&Echo 已设置开机30秒后自动启动"收银服务管理器"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动收银服务管理器... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\BillServer.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 已设置开机60秒后自动启动"房态自动处理工具"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动房态自动处理工具... >>%F% & Echo ping -n 30 127.1^>nul^ >>%F% & Echo start /min %disk%:\eVideo\BillSystem\KTV_AutoDeal.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 已设置开机70秒后自动启动"小企鹅服务"
Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动小企鹅服务... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\services\ServiceMgr.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 是否启动网络打印服务端？
Set /p prt=输入y启动/输入任意键不启动
if "%prt%"=="y" Echo.&Echo 已设置开机80秒后自动启动"网络打印机服务端" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动网络打印服务端... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\KTV_NetComBarCounter.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 是否启动短信服务端？
Set /p sms=输入y启动/输入任意键不启动
if "%sms%"=="y" Echo.&Echo 已设置开机后自动启动"分店短信服务端" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动短信服务端... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start %disk%:\eVideo\BillSystem\KTV_NewNoteServer.exe >>%F% & Echo echo. >>%F%
Echo.
Echo.&Echo 是否启动ADServer？(请将"ktv"目录放到"%disk%:\eVideo\"下)
Set /p ad=输入y启动/输入任意键不启动
if "%ad%"=="y" Echo.&Echo 已设置开机后自动启动"ADServer服务" & Echo ping -n 2 10^>nul^ >>%F% & Echo echo 正在启动ADServer... >>%F% & Echo ping -n 10 127.1^>nul^ >>%F% & Echo start /min %disk%:\eVideo\ktv\bin\ADServer.exe >>%F% & Echo echo. >>%F%
Echo.
Echo echo.^&echo^ 服务启动完成。 >>%F% & Echo ping -n 3 10^>nul^ >>%F% & Echo exit >>%F%
Goto Finish
:Finish
Echo.&Echo                完成...
ping -n 3 10>nul
Goto END
:OPDIR
explorer %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
Goto Menu
:END
exit