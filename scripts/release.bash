#!/bin/bash

# if [ -z "$1" ]; then
#   echo "Не указан путь до директории с исходными файлами Flutter"
#   exit 1
# fi

if [ -z "$1" ]; then
echo "Не введен второй параметр, отвечающий за версию проекта";
exit
fi

version="$1"
projname="ci_cd_calculator"
# projname=$(basename "${srcdir##*/}")

# cd "${srcdir}" || exit 1

git pull origin main
flutter pub get

if ! flutter test; then
    echo "Tests failed. Unluck :("
    exit 1
fi

if [ ! -d "release" ]; then
    mkdir release
fi

flutter build windows
cp "build\windows\x64\runner\Release\ci_cd_calculator.exe" "release/${projname}_${version}.exe"

echo "Сборка приложения завершена"
