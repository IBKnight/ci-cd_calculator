#!/bin/bash

if [ -z "$1" ]; then
echo "Не введен второй параметр, отвечающий за версию проекта";
exit
fi

version="$1"
projname="ci_cd_calculator"

flutter pub get

if ! flutter test; then
    echo "Tests failed. Unluck :("
    exit 1
fi

if [ ! -d "release" ]; then
    mkdir release
fi

flutter build windows
cp "build\windows\x64\runner\Release\ci_cd_calculator.exe" "release\ci_cd_calculator.exe"

echo "Сборка приложения завершена"
