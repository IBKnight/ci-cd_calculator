#!/bin/bash

# Запускаем `flutter pub get` для получения всех зависимостей Flutter.
flutter pub get

# Проверяем, существует ли папка "release". Если нет, то создаем ее.
if [ ! -d "release" ]; then
    mkdir release
fi

# Собираем APK-файл приложения Flutter.
# if ! flutter build apk; then
#     echo "Ошибка при сборке APK. Процесс завершается."
#     exit 1
# fi

if ! flutter build windows; then
    echo "Ошибка при сборке APK. Процесс завершается."
    exit 1
fi


# Копируем собранный APK-файл в папку "release".
# if ! cp "build/app/outputs/flutter-apk/app-release.apk" "release/app-release.apk"; then
#     echo "Ошибка при копировании APK. Процесс завершается."
#     exit 1
# fi

if ! cp -r "build/windows/x64/runner/Release/"* "release/"; then
    echo "Ошибка при копировании файлов. Процесс завершается."
    exit 1
fi

# Выводим сообщение о завершении скрипта.
echo "Your APK is ready in the release directory."