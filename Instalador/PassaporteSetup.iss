[Setup]
AppName=Passaporte Intergal�tico
AppVerName=1.16
AppPublisher=Tadeu Classe Games
DefaultDirName=C:\Tadeu Classe\Games\Passaporte
DefaultGroupName=Tadeu Classe Games
OutputDir=Release
OutputBaseFilename=PassaporteSetup
Compression=none
SolidCompression=true
InternalCompressLevel=ultra
DisableStartupPrompt=true
DirExistsWarning=no
ShowLanguageDialog=yes
RestartIfNeededByRun=false
UninstallFilesDir={app}\Uninst
VersionInfoVersion=1.16
VersionInfoCompany=Tadeu Classe Games
VersionInfoProductName=Passaporte Intergal�tico
VersionInfoProductVersion=1.16
PrivilegesRequired=none

[Tasks]
Name: desktopicon; Description: Criar &icone na �rea de Trabalho; GroupDescription: Icones adicionais:
Name: StartAfterInstall; Description: Executar ao Finalizar Instala��o
[Files]
Source: ..\PassaporteLauncher\bin\Debug\*.*; DestDir: {app}; Flags: overwritereadonly createallsubdirs recursesubdirs
[InstallDelete]
Name: {app}\PassaporteLauncher.pdb; Type: files
[Icons]
Name: {group}\Passaporte Intergal�tico\Passaporte Intergal�tico; Filename: {app}\PassaporteLauncher.exe
Name: {userdesktop}\Passaporte Intergal�tico; Filename: {app}\PassaporteLauncher.exe
Name: {group}\Passaporte Intergal�tico\Desisntalar; Filename: {app}\Uninst\unins000.exe
[Run]
Filename: {app}\PassaporteLauncher.exe; Flags: shellexec skipifsilent; Tasks: StartAfterInstall
