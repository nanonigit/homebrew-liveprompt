# Homebrew Tap for LivePrompt

[English](README.md) | [日本語](README.ja.md)

This tap builds [LivePrompt](https://github.com/nanonigit/LivePrompt) from source on your Apple silicon Mac. It requires macOS 26 or later and Xcode Command Line Tools with Swift 6.4 or later.

```sh
brew install nanonigit/liveprompt/liveprompt
liveprompt
```

For an existing installation, run `brew upgrade nanonigit/liveprompt/liveprompt`.

The app stays in Homebrew's managed directory. To make it visible in **Applications**, create a link to the stable Homebrew path:

```sh
ln -s "$(brew --prefix nanonigit/liveprompt/liveprompt)/libexec/LivePrompt.app" /Applications/LivePrompt.app
```

This does not overwrite an existing app. The link continues to point to the current Homebrew version after upgrades. Remove the link yourself if you uninstall LivePrompt.

`liveprompt` opens the app. On first use, allow **System Audio Recording** in macOS. Apple Intelligence is required for English question and reply suggestions; captions and translation can work without it.

The menu bar icon can reopen the main window and start or stop capture. In the main window, you can adjust prompt background transparency, Launch at Login, menu bar and Dock icon visibility, and view the last 30 days of capture start/end times. At least one of the two icons remains visible. Only timestamps are saved in usage history. The app includes a dedicated Finder and Dock icon.

This is a preview release. The initial Core Audio setup can take several minutes on macOS 27, and real Zoom, Meet, and Teams calls have not yet been tested. See the [app README](https://github.com/nanonigit/LivePrompt#readme) for privacy and limitations.

## License

The formula is MIT-licensed; see [LICENSE](LICENSE).
