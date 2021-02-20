#!/bin/bash
flutter clean && flutter pub get && cd ios && pod update && cd ../