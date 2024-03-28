
Write-Output "Inno Setup is not installed. Installing..."
mkdir .\innosetup
Invoke-WebRequest -Uri "https://jrsoftware.org/download.php/is.exe" -OutFile ".\innosetup\is.exe"
Start-Process -FilePath ".\innosetup\is.exe" -ArgumentList "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART" -Wait



if (-not (Test-Path "innosetup")) {
    mkdir innosetup
}

@'
[Setup]
AppName=epta_calc
AppVersion=1.0
DefaultDirName=release
OutputDir=release
OutputBaseFilename=installer
Compression=lzma2
SolidCompression=yes

[Files]
Source: "release\"; DestDir: "{app}"
'@ | Out-File -FilePath "innosetup\installer_script.iss"



iscc innosetup/installer_script.iss
