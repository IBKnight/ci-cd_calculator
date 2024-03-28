#!/bin/bash
flutter pub get

if ! flutter test; then
    echo "Tests failed. Unluck :("
    exit 1
fi

echo "All tests pust"
 