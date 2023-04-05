Force Paste.app (macOS)
===============

Little AppleScript application for macOS which allows pasting text even when it’s not allowed (password dialogs etc). It uses virtual keyboard to type in the text from your clipboard. In other words, it tricks the program that asks for your input into thinking that you’re actually typing on your keyboard. See also [the blog post with discussion](https://dae.me/blog/1741/paste-text-even-when-prohibited-in-macos-password-dialogs-etc/).

### Install

1. [Download (ZIP, ≈15KB)](https://github.com/EugeneDae/Force-Paste/releases/download/1.0.1/Force-Paste.zip) app and drag it to `/Applications`.

Alternatively, you can install it through [Homebrew](https://brew.sh/):

```sh
brew cask install force-paste
```

2. To make Force Paste work on MacOS Ventura, go to Settings -> Security & Privacy -> Privacy -> Accessibility:

- Force Paste (/Applications/Force Paste.app)
- applet (/Applications/Force Paste.app/Contents/MacOS/applet)
- Script Editor (/Applications/Utilities/Script Editor)

(click che `+` sign and press `shift` + `cmd` + `G` and paste the above routes).

3. Launch the app (you might have to right-click and select Open to confirm you want to run it).

*Important note:* if you're getting a "not allowed to send keystrokes" error, uninstall and repeat installation. 

### Usage

Copy the text you want to paste, then open the app from the Dock to have it immediately pasted.

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
