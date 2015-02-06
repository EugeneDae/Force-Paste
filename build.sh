#!/bin/bash
APP_NAME="Force Paste.app"

rm -rf "$APP_NAME"
osacompile -o "$APP_NAME" -x "main.scpt"
/usr/libexec/PlistBuddy -c "Add NSUIElement String 1" "$APP_NAME/Contents/Info.plist"
/usr/libexec/PlistBuddy -c "Set CFBundleIconFile icon" "$APP_NAME/Contents/Info.plist"
/usr/libexec/PlistBuddy -c "Add CFBundleVersion String 101" "$APP_NAME/Contents/Info.plist"
/usr/libexec/PlistBuddy -c "Add CFBundleShortVersionString String 1.0.1" "$APP_NAME/Contents/Info.plist"

rm -f "$APP_NAME/Contents/Resources/applet.icns"
cp "icon.icns" "$APP_NAME/Contents/Resources/"

rm -r "Force-Paste.zip"
zip -r "Force-Paste.zip" "Force Paste.app"