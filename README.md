Force Paste.app
===============

### [DOWNLOAD](https://github.com/EugeneDae/Force-Paste/releases/download/1.0.1/Force-Paste.zip) 
(ZIP, ≈15KB). See also [related blog post and discussion](http://d43.me/blog/1741/paste-text-even-when-prohibited-in-os-x-password-dialogs-etc/).

### Important note to macOS Mojave users: if you're getting a "not allowed to send keystrokes" error, simply add Force Paste.app to System Preferences > Security & Privacy > Accessibility. See [issue #7](https://github.com/EugeneDae/Force-Paste/issues/7).

Little AppleScript application for OS X which allows pasting text even when it’s not allowed (password dialogs etc). It uses virtual keyboard to type in the text from your clipboard. In other words, it tricks the program that asks for your input into thinking that you’re actually typing on your keyboard.

Use from the Dock or Scripts menu.
![How it works](https://raw.githubusercontent.com/EugeneDae/Force-Paste/master/about.jpg)

### Building
```
cd Force-Paste/
./build.sh
```
Pull requests are welcome.

### Copyrights
Icons by [Tango Project](http://tango.freedesktop.org/) and [Alexandre Moore](http://sa-ki.deviantart.com/).

License (for code): **WTFPL** ([Do What the Fuck You Want to](http://en.wikipedia.org/wiki/WTFPL)) or **MIT** if you like.
