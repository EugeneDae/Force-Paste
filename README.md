Force Paste.app (macOS)
===============

### Important note: if you're getting a "not allowed to send keystrokes" error, simply add Force Paste.app to System Preferences > Security & Privacy > Accessibility. If Force Paste doesn't work in macOS Big Sur, try removing it from System Preferences > Security & Privacy > Accessibility and adding it again. See [issue #7](https://github.com/EugeneDae/Force-Paste/issues/7) and [issue #12 about Big Sur](https://github.com/EugeneDae/Force-Paste/issues/12). 

Little AppleScript application for macOS which allows pasting text even when it’s not allowed (password dialogs etc). It uses virtual keyboard to type in the text from your clipboard. In other words, it tricks the program that asks for your input into thinking that you’re actually typing on your keyboard. See also [the blog post with discussion](https://dae.me/blog/1741/paste-text-even-when-prohibited-in-macos-password-dialogs-etc/).

### [DOWNLOAD (ZIP, ≈15KB)](https://github.com/EugeneDae/Force-Paste/releases/download/1.0.1/Force-Paste.zip)

Alternatively, you can install it through [Homebrew](https://brew.sh/):

```sh
brew cask install force-paste
```

After installation, make sure to put the app in the Dock. Advanced users familiar with the Scripts menu can put it there to save space in the Dock.

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
