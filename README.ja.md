# LivePrompt 用 Homebrew Tap

[English](README.md) | [日本語](README.ja.md)

この Tap は [LivePrompt](https://github.com/nanonigit/LivePrompt) を、お使いの Apple Silicon Mac でソースからビルドします。macOS 26 以降と、Swift 6.4 以降を含む Xcode Command Line Tools が必要です。

```sh
brew install nanonigit/liveprompt/liveprompt
liveprompt
```

アプリは Homebrew の管理ディレクトリ内に入り、`liveprompt` コマンドで開きます。初回は macOS の「システムオーディオ録音」を許可してください。英語の質問・返答案には Apple Intelligence が必要です。字幕・翻訳はそれがなくても利用できます。

メニューバーのアイコンから通常画面の再表示と収録の開始・停止ができます。通常画面ではプロンプター背景の透明度と、ログイン時に起動するかを設定できます。

これはプレビュー版です。macOS 27 で初回の Core Audio 準備に数分かかる場合があり、Zoom、Meet、Teams の実会議音声は未検証です。プライバシーと制限は[アプリの README](https://github.com/nanonigit/LivePrompt/blob/main/README.ja.md)を参照してください。

## ライセンス

Formula は MIT ライセンスです。[LICENSE](LICENSE)を参照してください。
