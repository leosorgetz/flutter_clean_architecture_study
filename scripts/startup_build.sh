#!/bin/bash
flutter clean && flutter pub get && cd ios && pod update && cd ../ && flutter pub run build_runner build --delete-conflicting-outputs