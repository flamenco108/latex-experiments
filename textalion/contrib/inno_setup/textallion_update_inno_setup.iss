; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Textallion-Update"
#define MyAppVersion "2011-06-03"
#define MyAppPublisher "textallion"
#define MyAppURL "http://textallion.googlecode.com"
#define MyAppExeName "textallion_update.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{20F662B1-6658-4612-93D0-6285C6D25725}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=c:\cygwin\usr\share\textallion\
DisableDirPage=yes        
DefaultGroupName={#MyAppName}
;LicenseFile=C:\textallion_setup\cygwin\usr\share\textallion\docs\license.t2t
InfoBeforeFile=C:\textallion_setup\readme.txt
OutputBaseFilename=textallion_update
SetupIconFile=textallion.ico
UninstallDisplayIcon={app}\unins000.exe
Compression=lzma
SolidCompression=yes
WizardImageFile=logo_textallion.bmp
WizardSmallImageFile=logo_textallion_small.bmp

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; InfoBeforeFile: C:\textallion_setup\textallion_update.txt
Name: "english"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: C:\textallion_setup\textallion_update.txt


[Tasks]
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\textallion_setup\cygwin\usr\share\textallion\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;  
;Components: Main

[Icons]



[Run]
;Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; ;Flags: shellexec postinstall skipifsilent; Components: Main

[Components]
;Name: Main; Description: Update Textallion to the latest version; Types: full ; Flags: fixed


;[UninstallRun]
;Filename: {app}\*;
