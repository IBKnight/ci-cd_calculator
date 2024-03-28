#!/bin/bash

# Проверка наличия Inno Setup
if ! command -v iscc &> /dev/null; then
    echo "Inno Setup не установлен. Устанавливаю..."
    if [[ "$(uname)" == "Linux" ]]; then
        # Установка Inno Setup на Linux
        sudo apt-get update
        sudo apt-get install innoextract
    else
        echo "Поддержка для вашей операционной системы не реализована."
        exit 1
    fi
fi

if [ ! -d "innosetup" ]; then
    mkdir innosetup
fi

# Создание скрипта Inno Setup для установщика
cat <<EOF > innosetup/installer_script.iss
[Setup]
AppName=epta_calc
AppVersion=1.0
DefaultDirName=release
OutputDir=release
OutputBaseFilename=installer
Compression=lzma2
SolidCompression=yes

[Files]
Source: "release/*"; DestDir: "{app}"

EOF

# Переход в папку с установщиком и создание установщика
cd release
iscc innosetup/installer_script.iss
