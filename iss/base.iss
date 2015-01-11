﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ZabbixTray"
#define MyAppVersion "1.0"
#define MyAppPublisher "Alef-E Ltd."
#define MyAppURL "https://Alef-e.ru/"
#define MyAppExeName "ZabbixTray.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{ADB1E06F-47FA-471C-B2BC-2344416BEFCF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
InfoBeforeFile=F:\APRG\ZabbixTray\README.md
OutputBaseFilename=ZabbixTraySetup
SetupIconFile=F:\APRG\ZabbixTray\img\favicon.ico
Compression=lzma
SolidCompression=yes
WizardImageFile=

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Files]
Source: "F:\APRG\ZabbixTray\bin\ZabbixTray.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\APRG\ZabbixTray\bin\WinSparkle.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: "HKCU"; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "ZabbixTray"; ValueData: "{app}\ZabbixTray.exe"; Flags: createvalueifdoesntexist deletekey