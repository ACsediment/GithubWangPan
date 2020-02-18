rem This bat file is designed to uninstall AutoCAD automatically, could be useful for administrators, especially when users are using pirated CAD.
rem 使用7-zip打包为自释放exe文件。
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
rem 启用管理员权限 Requesting Administrator privilage
@echo off
color 1f
title 正在卸载CAD，请稍候
rem Unstalling AutoCAD, please wait.

rem 2010 x64
c:\windows\system32\msiexec.exe /x {5783F2D7-8001-0804-0102-0060B0CE6BBA} /qn /passive /norestart
rem 2010 x32
c:\windows\system32\msiexec.exe /x {5783F2D7-8001-0804-0002-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {55D9E026-DCB0-46FF-B60A-68B972228CF6} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {5783F2D7-8001-0804-1002-0060B0CE6BBA} /qn /passive /norestart
rem 2008 x32
c:\windows\system32\msiexec.exe /x {5783F2D7-6001-0804-0002-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {9A346205-EA92-4406-B1AB-50379DA3F057} /qn /passive /norestart
rem 2014 x32
c:\windows\system32\msiexec.exe /x {5783F2D7-D001-0000-0002-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {5783F2D7-D001-0804-1002-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {31ABA3F2-0000-1033-0002-111D43815377} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {31ABA3F2-0010-1033-0002-111D43815377} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {51BF3210-B825-4092-8E0D-66D689916E02} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {52B28CAD-F49D-47BA-9FFE-29C2E85F0D0B} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {62F029AB-85F2-0000-866A-9FC0DD99DDBC} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {644F9B19-A462-499C-BF4D-300ABC2A28B1} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {5783F2D7-D001-0804-2002-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {C070121A-C8C5-4D52-9A7D-D240631BD433} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {F732FEDA-7713-4428-934B-EF83B8DD65D0} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {8F196892-666A-4A40-8587-6AE38F78A5C2} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {644E9589-F73A-49A4-AC61-A953B9DE5669} /qn /passive /norestart
rem 2014 x64
c:\windows\system32\msiexec.exe /x {31ABA3F2-0000-1033-0102-111D43815377} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {31ABA3F2-0010-1033-0102-111D43815377} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {51BF3210-B825-4092-8E0D-66D689916E02} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {52B28CAD-F49D-47BA-9FFE-29C2E85F0D0B} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {62F029AB-85F2-0000-866A-9FC0DD99DDBC} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {644F9B19-A462-499C-BF4D-300ABC2A28B1} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {5783F2D7-D001-0000-0102-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {5783F2D7-D001-0804-2102-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {5783F2D7-D001-0804-1102-0060B0CE6BBA} /qn /passive /norestart
c:\windows\system32\msiexec.exe /x {8A470330-70B2-49AD-86AF-79885EF9898A} /qn /passive /norestart

title 正在清理CAD的卸载残留，大概需要5分钟。。。
rem Cleaning left overs, might takes 5 min.

rem C盘安装
del /f /q "C:\ProgramData\FLEXnet\adskflex*"
del /f /q "C:\Documents and Settings\All Users\Application Data\FLEXnet\adskflex*"
rmdir /s /q "C:\Program Files\Autodesk\"
rmdir /s /q "C:\Program Files (x86)\Autodesk"
rmdir /s /q "C:\Program Files\AutoCAD 2010"
rmdir /s /q "C:\Program Files\AutoCAD 2008"
rmdir /s /q "C:\Program Files\AutoCAD 2014"
rmdir /s /q "C:\Program Files\Autodesk\AutoCAD 2014"
rmdir /s /q "C:\Program Files\Autodesk ReCap"
rmdir /s /q "C:\ProgramData\FARO"
rmdir /s /q "C:\Program Files\Common Files\Autodesk Shared"

rem D盘安装
del /f /q "D:\ProgramData\FLEXnet\adskflex*"
del /f /q "D:\Documents and Settings\All Users\Application Data\FLEXnet\adskflex*"
rmdir /s /q "D:\Program Files\Autodesk\"
rmdir /s /q "D:\Program Files (x86)\Autodesk"
rmdir /s /q "D:\Program Files\AutoCAD 2010"
rmdir /s /q "D:\Program Files\AutoCAD 2008"
rmdir /s /q "D:\Program Files\AutoCAD 2014"
rmdir /s /q "D:\Program Files\Autodesk\AutoCAD 2014"
rmdir /s /q "D:\Program Files\Autodesk ReCap"
rmdir /s /q "D:\ProgramData\FARO"
rmdir /s /q "D:\Program Files\Common Files\Autodesk Shared"

rmdir /s /q "%ProgramFiles(x86)%\AutoCAD 2010\"
rmdir /s /q "%ProgramFiles%\AutoCAD 2010\"
rmdir /s /q "%ProgramFiles(x86)%\AutoCAD 2008\"
rmdir /s /q "%ProgramFiles%\AutoCAD 2008\"
rmdir /s /q "%ProgramFiles(x86)%\AutoCAD 2014\"
rmdir /s /q "%ProgramFiles%\AutoCAD 2014\"
rmdir /s /q "%ProgramFiles%\Autodesk\AutoCAD 2014"
rmdir /s /q "%ProgramFiles(x86)%\Autodesk\AutoCAD 2014"
rmdir /s /q "%ProgramFiles(x86)%\Autodesk ReCap\"
rmdir /s /q "%ProgramFiles%\Autodesk ReCap\"
rmdir /s /q "%ProgramFiles(x86)%\Autodesk\"
rmdir /s /q "%ProgramFiles%\Autodesk\"
rmdir /s /q "%CommonProgramFiles%\Autodesk Shared"
rmdir /s /q "%ProgramData%\Autodesk\"
del /f /q "%ProgramData%\FLEXnet\adskflex*"
rmdir /s /q "%allusersprofile%\Autodesk\"
rmdir /s /q "%USERPROFILE%\AppData\Local\Autodesk\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Autodesk\"
rmdir /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Autodesk"
rmdir /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Autodesk"
rmdir /s /q "%ProgramData%\FARO"

rem 清理注册表
reg delete HKEY_CURRENT_USER\Software\Autodesk /f
reg delete HKEY_LOCAL_MACHINE\Software\Autodesk /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5783F2D7-8001-0804-0102-0060B0CE6BBA} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5783F2D7-8001-0804-0002-0060B0CE6BBA} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{55D9E026-DCB0-46FF-B60A-68B972228CF6} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5783F2D7-8001-0804-1002-0060B0CE6BBA} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5783F2D7-6001-0804-0002-0060B0CE6BBA} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9A346205-EA92-4406-B1AB-50379DA3F057} /f

rem 2008 x32
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\R17.1\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\R17.1\chs\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\R17.1\chs\Support\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\R17.1\chs\Support\Profiles\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\R17.1\chs\Support\Profiles\未命名配置\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2008\R17.1\chs\Support\ToolPalette\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v C:\Windows\Installer\{9A346205-EA92-4406-B1AB-50379DA3F057}\ /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\\" /f

rem 2010 x32
reg delete HKEY_CLASSES_ROOT\Installer\Products\7D2F387510084080002000060BECB6AB /f
reg delete HKEY_CLASSES_ROOT\Installer\Products\7D2F387510084080012000060BECB6AB /f
reg delete HKEY_CLASSES_ROOT\Installer\Products\7D2F387510084080112000060BECB6AB /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\7D2F387510084080002000060BECB6AB /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\7D2F387510084080012000060BECB6AB /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\7D2F387510084080112000060BECB6AB /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\AutoCAD 2010 Language Pack - Simplified Chinese" /f
reg delete HKEY_CLASSES_ROOT\3dsFile /f
reg delete HKEY_CLASSES_ROOT\AutoLISPFile /f
reg delete HKEY_CLASSES_ROOT\AutoLISPMenuSource /f
reg delete HKEY_CLASSES_ROOT\AutodeskColorBook /f
reg delete HKEY_CLASSES_ROOT\AutodeskDGN /f
reg delete HKEY_CLASSES_ROOT\AutoCAD.Application /f
reg delete HKEY_CLASSES_ROOT\AutoCAD.Application.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCAD.Drawing /f
reg delete HKEY_CLASSES_ROOT\AutoCAD.Drawing.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCADActionMacro /f
reg delete HKEY_CLASSES_ROOT\AutoCADAttributeExtractionTemplate /f
reg delete HKEY_CLASSES_ROOT\AutoCADAuditLog /f
reg delete HKEY_CLASSES_ROOT\AutoCADAutoLISPFastLoadFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADAutosaveDrawing /f
reg delete HKEY_CLASSES_ROOT\AutoCADColorDependentPlotStyleTableFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADCompiledShape /f
reg delete HKEY_CLASSES_ROOT\AutoCADCustomDictionary /f
reg delete HKEY_CLASSES_ROOT\AutoCADCustomizationFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADDatabaseExtensionFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADDbQueryFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADDbTemplateFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADDialogDefinition /f
reg delete HKEY_CLASSES_ROOT\AutoCADDialogErrorLog /f
reg delete HKEY_CLASSES_ROOT\AutoCADDictionary /f
reg delete HKEY_CLASSES_ROOT\AutoCADDrawingInterchange.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCADDrawingInterchangeAttribute /f
reg delete HKEY_CLASSES_ROOT\AutoCADDrawingInterchangeBinary /f
reg delete HKEY_CLASSES_ROOT\AutoCADDrawingStandardsFile.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCADDXEFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADDXFIXSupport /f
reg delete HKEY_CLASSES_ROOT\AutoCADEmergencyDWGFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADExtensionFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADExternalMessage /f
reg delete HKEY_CLASSES_ROOT\AutoCADFAXRasterPlot /f
reg delete HKEY_CLASSES_ROOT\AutoCADFieldCatalog /f
reg delete HKEY_CLASSES_ROOT\AutoCADFilterList /f
reg delete HKEY_CLASSES_ROOT\AutoCADFITRasterPlot /f
reg delete HKEY_CLASSES_ROOT\AutoCADFontMap /f
reg delete HKEY_CLASSES_ROOT\AutoCADHatchPatternDefinition /f
reg delete HKEY_CLASSES_ROOT\AutoCADHeidiDeviceInterfaceFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADLandscapeLibrary /f
reg delete HKEY_CLASSES_ROOT\AutoCADLayerState /f
reg delete HKEY_CLASSES_ROOT\AutoCADLinetypeDefinition /f
reg delete HKEY_CLASSES_ROOT\AutoCADMenuResource /f
reg delete HKEY_CLASSES_ROOT\AutoCADMenuSource /f
reg delete HKEY_CLASSES_ROOT\AutoCADMenuTemplate /f
reg delete HKEY_CLASSES_ROOT\AutoCADMultilineDefinition /f
reg delete HKEY_CLASSES_ROOT\AutoCADPlot /f
reg delete HKEY_CLASSES_ROOT\AutoCADPlotStampSettings /f
reg delete HKEY_CLASSES_ROOT\AutoCADPlotterModelParametersFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADPostScriptPatterns /f
reg delete HKEY_CLASSES_ROOT\AutoCADPostScriptSupport /f
reg delete HKEY_CLASSES_ROOT\AutoCADProgramParameters /f
reg delete HKEY_CLASSES_ROOT\AutoCADPublishToWeb /f
reg delete HKEY_CLASSES_ROOT\AutoCADPublishToWebTemplate /f
reg delete HKEY_CLASSES_ROOT\AutoCADRedlineMarkupLanguage /f
reg delete HKEY_CLASSES_ROOT\AutoCADRenderMaterialsLibrary /f
reg delete HKEY_CLASSES_ROOT\AutoCADScriptFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADShapeSource /f
reg delete HKEY_CLASSES_ROOT\AutoCADSheetSet.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCADSlide /f
reg delete HKEY_CLASSES_ROOT\AutoCADSlideLibrary /f
reg delete HKEY_CLASSES_ROOT\AutoCADStandardsCheckFile.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCADStatusLog /f
reg delete HKEY_CLASSES_ROOT\AutoCADStyleSheetFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADTempFile /f
reg delete HKEY_CLASSES_ROOT\AutoCADTemplate.18 /f
reg delete HKEY_CLASSES_ROOT\AutoCADToolCatalog /f
reg delete HKEY_CLASSES_ROOT\AutoCADUnitDefinition /f
reg delete HKEY_CLASSES_ROOT\AutoCADVBASource /f
reg delete HKEY_CLASSES_ROOT\AutoCADWorkSpace /f
reg delete HKEY_CLASSES_ROOT\AutoCADXREFLog /f
reg delete HKEY_CLASSES_ROOT\.$$$ /f
reg delete HKEY_CLASSES_ROOT\.$A /f
reg delete HKEY_CLASSES_ROOT\.ac$ /f
reg delete HKEY_CLASSES_ROOT\.acb /f
reg delete HKEY_CLASSES_ROOT\.dgn /f
reg delete HKEY_CLASSES_ROOT\.actm /f
reg delete HKEY_CLASSES_ROOT\.adt /f
reg delete HKEY_CLASSES_ROOT\.arx /f
reg delete HKEY_CLASSES_ROOT\.atc /f
reg delete HKEY_CLASSES_ROOT\.aws /f
reg delete HKEY_CLASSES_ROOT\.blk /f
reg delete HKEY_CLASSES_ROOT\.chx /f
reg delete HKEY_CLASSES_ROOT\.ctb /f
reg delete HKEY_CLASSES_ROOT\.cui /f
reg delete HKEY_CLASSES_ROOT\.cuix /f
reg delete HKEY_CLASSES_ROOT\.cus /f
reg delete HKEY_CLASSES_ROOT\.dbq /f
reg delete HKEY_CLASSES_ROOT\.dbt /f
reg delete HKEY_CLASSES_ROOT\.dbx /f
reg delete HKEY_CLASSES_ROOT\.dce /f
reg delete HKEY_CLASSES_ROOT\.dcl /f
reg delete HKEY_CLASSES_ROOT\.dct /f
reg delete HKEY_CLASSES_ROOT\.dst /f
reg delete HKEY_CLASSES_ROOT\.dvb /f
reg delete HKEY_CLASSES_ROOT\.dwg /f
reg delete HKEY_CLASSES_ROOT\.dws /f
reg delete HKEY_CLASSES_ROOT\.dwt /f
reg delete HKEY_CLASSES_ROOT\.dxb /f
reg delete HKEY_CLASSES_ROOT\.dxe /f
reg delete HKEY_CLASSES_ROOT\.dxf /f
reg delete HKEY_CLASSES_ROOT\.dxt /f
reg delete HKEY_CLASSES_ROOT\.dxx /f
reg delete HKEY_CLASSES_ROOT\.fas /f
reg delete HKEY_CLASSES_ROOT\.fax /f
reg delete HKEY_CLASSES_ROOT\.fdc /f
reg delete HKEY_CLASSES_ROOT\.fit /f
reg delete HKEY_CLASSES_ROOT\.fmp /f
reg delete HKEY_CLASSES_ROOT\.hdi /f
reg delete HKEY_CLASSES_ROOT\.las /f
reg delete HKEY_CLASSES_ROOT\.lin /f
reg delete HKEY_CLASSES_ROOT\.lli /f
reg delete HKEY_CLASSES_ROOT\.mli /f
reg delete HKEY_CLASSES_ROOT\.mln /f
reg delete HKEY_CLASSES_ROOT\.mnr /f
reg delete HKEY_CLASSES_ROOT\.mns /f
reg delete HKEY_CLASSES_ROOT\.mnu /f
reg delete HKEY_CLASSES_ROOT\.nfl /f
reg delete HKEY_CLASSES_ROOT\.pat /f
reg delete HKEY_CLASSES_ROOT\.pgp /f
reg delete HKEY_CLASSES_ROOT\.plt /f
reg delete HKEY_CLASSES_ROOT\.pmp /f
reg delete HKEY_CLASSES_ROOT\.ps /f
reg delete HKEY_CLASSES_ROOT\.psf /f
reg delete HKEY_CLASSES_ROOT\.pss /f
reg delete HKEY_CLASSES_ROOT\.ptw /f
reg delete HKEY_CLASSES_ROOT\.pwt /f
reg delete HKEY_CLASSES_ROOT\.rml /f
reg delete HKEY_CLASSES_ROOT\.scr /f
reg delete HKEY_CLASSES_ROOT\.shp /f
reg delete HKEY_CLASSES_ROOT\.shx /f
reg delete HKEY_CLASSES_ROOT\.slb /f
reg delete HKEY_CLASSES_ROOT\.sld /f
reg delete HKEY_CLASSES_ROOT\.slg /f
reg delete HKEY_CLASSES_ROOT\.stb /f
reg delete HKEY_CLASSES_ROOT\.sv$ /f
reg delete HKEY_CLASSES_ROOT\.unt /f
reg delete HKEY_CLASSES_ROOT\.xlg /f
reg delete HKEY_CLASSES_ROOT\.xmx /f
reg delete HKEY_CLASSES_ROOT\cdc_auto_file /f
reg delete HKEY_CLASSES_ROOT\CLSID\{6D7AE628-FF41-4CD3-91DD-34825BB1A251} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{D70E31AD-2614-49F2-B0FC-ACA781D81F3E} /f
reg delete HKEY_CLASSES_ROOT\CLSID\{E2C40589-DE61-11ce-BAE0-0020AF6D7005} /f
reg delete HKEY_CLASSES_ROOT\CompleteR16PlotConfigurationFile /f
reg delete HKEY_CLASSES_ROOT\DrawingSetDescription /f
reg delete HKEY_CLASSES_ROOT\EncapsulatedPostscript /f
reg delete HKEY_CLASSES_ROOT\ErrorLogFile /f
reg delete HKEY_CLASSES_ROOT\ExportedToolPalettes /f
reg delete HKEY_CLASSES_ROOT\GhostscriptDefaultFont /f
reg delete HKEY_CLASSES_ROOT\GhostscriptFontFile /f
reg delete "HKEY_CLASSES_ROOT\Installer\Assemblies\C:|Program Files|AutoCAD 2010|AcAppRes.dll" /f
reg delete HKEY_CLASSES_ROOT\StandardACISText /f
reg delete HKEY_CLASSES_ROOT\TypeLib\{B66A9CC4-B044-4261-A1AD-12E195346872} /f
reg delete HKEY_CLASSES_ROOT\WindowsMetafile /f
reg delete HKEY_CLASSES_ROOT\Wow6432Node\TypeLib\{B66A9CC4-B044-4261-A1AD-12E195346872} /f
reg delete HKEY_CURRENT_USER\Software\Classes\CLSID\{6D7AE628-FF41-4CD3-91DD-34825BB1A251} /f
reg delete HKEY_CURRENT_USER\Software\Classes\CLSID\{D70E31AD-2614-49F2-B0FC-ACA781D81F3E} /f
reg delete HKEY_CURRENT_USER\Software\Classes\CLSID\{E2C40589-DE61-11ce-BAE0-0020AF6D7005} /f
reg delete HKEY_CURRENT_USER\Software\Classes\CompleteR16PlotConfigurationFile /f
reg delete HKEY_CURRENT_USER\Software\Classes\DrawingSetDescription /f
reg delete HKEY_CURRENT_USER\Software\Classes\EncapsulatedPostscript /f
reg delete HKEY_CURRENT_USER\Software\Classes\ErrorLogFile /f
reg delete HKEY_CURRENT_USER\Software\Classes\ExportedToolPalettes /f
reg delete HKEY_CURRENT_USER\Software\Classes\GhostscriptDefaultFont /f
reg delete HKEY_CURRENT_USER\Software\Classes\GhostscriptFontFile /f
reg delete HKEY_CURRENT_USER\Software\Classes\StandardACISText /f
reg delete HKEY_CURRENT_USER\Software\Classes\WindowsMetafile /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\Common Files\Autodesk Shared\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\ProgramData\Autodesk\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\chs\Support\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\chs\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\ProgramData\Autodesk\AutoCAD 2010\R18.0\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\ProgramData\Autodesk\AutoCAD 2010\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\WebServices\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Sample\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Sample\DesignCenter\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Drv\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Support\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\PTWTemplates\Support\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\PTWTemplates\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UPI\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\CER\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\Common Files\Autodesk Shared\AcDwgFilter\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\Common Files\Autodesk Shared\AcShellEx\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\PTWTemplates\Support\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\PTWTemplates\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\chs\Support\Profiles\未命名配置\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\chs\Support\Profiles\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\chs\Support\ToolPalette\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\ProgramData\Autodesk\AutoCAD 2010\R18.0\ADLM\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\LanguagePack\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Roaming\Autodesk\AutoCAD 2010\R18.0\chs\LanguagePack\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\zh-CN\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\InfoLink\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\InfoLink\Images\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\Infotainment\ACAD\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\Infotainment\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\Infotainment\Images\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Help\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Drv\ProxyPages\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\PTWTemplates\Template1\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\PTWTemplates\Template2\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\PTWTemplates\Template3\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\PTWTemplates\Template4\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\UserDataCache\Template\SheetSets\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Help\newfeatures\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Sample\Dynamic Blocks\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\AutoCAD 2010\Setup\zh-CN\SetupRes\Docs\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\Common Files\Autodesk Shared\AcShellEx\chs\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Program Files\Common Files\Autodesk Shared\AcShellEx\enu\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\PTWTemplates\Template4\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\PTWTemplates\Template3\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\PTWTemplates\Template2\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\PTWTemplates\Template1\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Template\SheetSets\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Users\Administrator\AppData\Local\Autodesk\AutoCAD 2010\R18.0\chs\Support\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders /v "C:\Windows\Installer\{5783F2D7-8001-0804-1002-0060B0CE6BBA}\\" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\mtstack16chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\mtstack16EnuRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\xeswmsg.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\hpdnjtmsg.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\ocewpdmsg.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\ax18chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\ax18enures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\erren.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\acadauto.chm" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcAxDb18enures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcAxDb18chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcAuthEntities18enures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcAuthEntities18chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\acdb18chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\acdb18enures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\AcSceneRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcMPolygon18chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcMPolygon18enures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\AcMPolygonObj18chsRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\AcMPolygonObj18enuRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\acETransmitRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\AdImagingRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\CER\thankYou.htm" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\CER\exampleDesc.htm" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\senddmpRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\cspchsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\cspenures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\AdSubAwareres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\WebServices\WSLiveUpdate.xsl" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\WebServices\xmsg_WSLiveUpdateExt.js" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\WebServices\WSExtensionStatus.htm" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcDwgFilter\ad18asm215.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AcShellEx\chs\AcShellExtensionRes.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\ASMm215chsres.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\AutoCAD 2010\ASMm215enures.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AdHelpSearch1Chs.dll" /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /v "C:\Program Files\Common Files\Autodesk Shared\AdHelpSearch1Enu.dll" /f

rem 2014 x32
reg delete "HKEY_CURRENT_USER\Software\Classes\acad.D001.804" /f
reg delete "HKEY_CLASSES_ROOT\acad.D001.804" /f
reg delete "HKEY_CLASSES_ROOT\AutoCAD.Drawing.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADDrawingInterchange.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADDrawingStandardsFile.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADFBXFile" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADSheetSet.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADStandardsCheckFile.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADTemplate.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCAD.Application.19" /f
reg delete "HKEY_CLASSES_ROOT\AutoCADCoreExtensionFile" /f
reg delete "HKEY_CLASSES_ROOT\.crx" /f
reg delete "HKEY_CLASSES_ROOT\.fbx" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\.crx" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\.fbx" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCAD.Drawing.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADDrawingInterchange.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADDrawingStandardsFile.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADFBXFile" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADSheetSet.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADStandardsCheckFile.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADTemplate.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCAD.Application.19" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\AutoCADCoreExtensionFile" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.ADT" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.arx" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.crx" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.dbx" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.hdi" /f
reg delete "HKEY_CURRENT_USER\Software\Trolltech\OrganizationDefaults\Qt Factory Cache 4.8" /f
reg delete "HKEY_CURRENT_USER\Software\Trolltech\OrganizationDefaults\Qt Plugin Cache 4.8.false" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{A7B36FF9-3BB0-426B-A737-A997B80466D5}" /f
reg delete "HKEY_CLASSES_ROOT\CLSID\{6A221957-2D85-42A7-8E19-BE33950D1DEB}" /f
reg delete "HKEY_CLASSES_ROOT\CLSID\{7DE1BE5C-CEBA-4F1D-ACBC-9CE11EE9A2A1}" /f
reg delete "HKEY_CLASSES_ROOT\CLSID\{BD0DEB94-63DB-4392-9420-6EEE05094B1F}" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{6A221957-2D85-42A7-8E19-BE33950D1DEB}" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{7DE1BE5C-CEBA-4F1D-ACBC-9CE11EE9A2A1}" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{BD0DEB94-63DB-4392-9420-6EEE05094B1F}" /f
reg delete "HKEY_CLASSES_ROOT\Installer\Features\BA920F262F58100068A6F90CDD99DDCB" /f
reg delete "HKEY_CLASSES_ROOT\Installer\Products\BA920F262F58100068A6F90CDD99DDCB" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\App Paths\RegisterInventorServer.exe" /f

reg delete "HKEY_USERS\.DEFAULT\Software\Autodesk" /f
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\.dwg" /f
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\AutoCAD.Drawing.19" /f
reg delete "HKEY_USERS\S-1-5-18\Software\Autodesk" /f
reg delete "HKEY_USERS\S-1-5-18\Software\Classes\.dwg" /f
reg delete "HKEY_USERS\S-1-5-18\Software\Classes\AutoCAD.Drawing.19" /f

rem 清理各个用户的家目录下的AppData
cd %USERPROFILE%
c:
cd..
rem for后面加上参数 /R %DIR%表示需要遍历子文件夹,去掉表示不遍历子文件夹
rem %%f 是一个变量,类似于迭代器,但是这个变量只能由一个字母组成,前面带上%%
rem 括号中是通配符,可以指定后缀名,*.*表示所有文件
for /D %%f in (*) do (
echo %%f 
rmdir /s /q %%f\AppData\Local\Autodesk
rmdir /s /q %%f\AppData\Roaming\Autodesk
)

rem 清理日志
FOR /F %%I IN ('WEVTUTIL EL') DO (WEVTUTIL CL %%I)

rem 自我清理 Deleting myslef
del %USERPROFILE%\desktop\CADuninstall.exe
del %systemdrive%\CADuninstall.exe

cls
title 清理完毕，按任意键退出
echo=
echo -------------------------------
echo 卸载已完成
echo 如果看不到桌面，可使用Ctrl+Alt+Del组合键 - 启动任务管理器
echo 在任务管理器中，点击[文件]-[新建任务]
echo 输入：explorer
echo 点击[确定]，即可修复
echo -------------------------------
echo=
echo=
echo 按任意键退出
pause
