#!/bin/bash
flutter pub get

if [ ! -d "release" ]; then
    mkdir release
fi

flutter build windows
cp "build\windows\x64\runner\Release\ci_cd_calculator.exe" "release\ci_cd_calculator.exe"

echo "Shut up ur mouth"
