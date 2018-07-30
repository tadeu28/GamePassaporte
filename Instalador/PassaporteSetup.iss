[Setup]
AppName=Passaporte Intergalático
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
VersionInfoProductName=Passaporte Intergalático
VersionInfoProductVersion=1.16
PrivilegesRequired=none

[Tasks]
Name: desktopicon; Description: Criar &icone na Área de Trabalho; GroupDescription: Icones adicionais:
Name: StartAfterInstall; Description: Executar ao Finalizar Instalação
[Files]
Source: ..\PassaporteLauncher\bin\Debug\*.*; DestDir: {app}; Flags: overwritereadonly createallsubdirs recursesubdirs
[InstallDelete]
Name: {app}\PassaporteLauncher.pdb; Type: files
[Icons]
Name: {group}\Passaporte Intergalático\Passaporte Intergalático; Filename: {app}\PassaporteLauncher.exe
Name: {userdesktop}\Passaporte Intergalático; Filename: {app}\PassaporteLauncher.exe
Name: {group}\Passaporte Intergalático\Desisntalar; Filename: {app}\Uninst\unins000.exe
[Run]
Filename: {app}\PassaporteLauncher.exe; Flags: shellexec skipifsilent; Tasks: StartAfterInstall
