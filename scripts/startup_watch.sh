#!/bin/bash
flutter clean && flutter pub get && cd ios && pod update && cd ../ && flutter pub run build_runner watch --delete-conflicting-outputs