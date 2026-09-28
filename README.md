# Homebrew Tap for LivePrompt

[English](README.md) | [日本語](README.ja.md)

This tap builds [LivePrompt](https://github.com/nanonigit/LivePrompt) from source on your Apple silicon Mac. It requires macOS 26 or later and Xcode Command Line Tools with Swift 6.4 or later.

```sh
brew install nanonigit/liveprompt/liveprompt
liveprompt
```

The app is installed inside the Homebrew keg. `liveprompt` opens it. On first use, allow **System Audio Recording** in macOS. Apple Intelligence is required for English question and reply suggestions; captions and translation can work without it.

The menu bar icon can reopen the main window and start or stop capture. In the main window, you can adjust prompt background transparency and optionally enable Launch at Login.

This is a preview release. The initial Core Audio setup can take several minutes on macOS 27, and real Zoom, Meet, and Teams calls have not yet been tested. See the [app README](https://github.com/nanonigit/LivePrompt#readme) for privacy and limitations.

## License

The formula is MIT-licensed; see [LICENSE](LICENSE).
