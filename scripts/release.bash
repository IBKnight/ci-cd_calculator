#!/bin/bash
flutter pub get

if [ ! -d "release" ]; then
    mkdir release
fi

flutter build apk
cp "build\app\outputs\flutter-apk\app-release.apk" "release\app-release.apk"

echo "Shut up ur mouth"
