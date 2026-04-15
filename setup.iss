[Setup]
AppName=Telegrum
AppVersion=1.0
DefaultDirName={pf}\Telegrum
DefaultGroupName=Telegrum
OutputDir=.
OutputBaseFilename=TelegrumSetup
SetupIconFile=telegrum.ico
Compression=lzma
SolidCompression=yes

[Files]
Source: "tsetup.exe"; DestDir: "{tmp}"
Source: "tgws.exe"; DestDir: "{app}"
Source: "Telegrum.exe"; DestDir: "{app}"
Source: "telegrum.ico"; DestDir: "{app}"

[Run]
; тихо ставим Telegram
Filename: "{tmp}\tsetup.exe"; Parameters: "/silent"; Flags: runhidden waituntilterminated

[Icons]
Name: "{commondesktop}\Telegrum"; Filename: "{app}\Telegrum.exe"; IconFilename: "{app}\telegrum.ico"
Name: "{group}\Telegrum"; Filename: "{app}\Telegrum.exe"