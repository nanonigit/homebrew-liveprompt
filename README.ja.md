# LivePrompt 用 Homebrew Tap

[English](README.md) | [日本語](README.ja.md)

この Tap は [LivePrompt](https://github.com/nanonigit/LivePrompt) を、お使いの Apple Silicon Mac でソースからビルドします。macOS 26 以降と、Swift 6.4 以降を含む Xcode Command Line Tools が必要です。

```sh
brew install nanonigit/liveprompt/liveprompt
liveprompt
```

インストール済みの場合は `brew upgrade nanonigit/liveprompt/liveprompt` で更新できます。

アプリ本体は Homebrew の管理ディレクトリに置かれます。**アプリケーション**フォルダにも表示するには、安定した Homebrew のパスへのリンクを作成します。

```sh
ln -s "$(brew --prefix nanonigit/liveprompt/liveprompt)/libexec/LivePrompt.app" /Applications/LivePrompt.app
```

同名のアプリが既にある場合は上書きしません。Homebrew で更新した後も、リンクは現在の版を指します。LivePrompt をアンインストールした場合は、このリンクを手動で削除してください。

`liveprompt` コマンドでアプリを開きます。初回は macOS の「システムオーディオ録音」を許可してください。英語の質問・返答案には Apple Intelligence が必要です。字幕・翻訳はそれがなくても利用できます。

メニューバーのアイコンから通常画面の再表示と収録の開始・停止ができます。通常画面ではプロンプター背景の透明度、ログイン時の起動、メニューバーと Dock のアイコン表示を設定し、過去30日分の収録開始・終了日時を確認できます。アイコンは少なくとも一方を表示します。履歴には日時だけを保存します。Finder と Dock 用の専用アイコンも含まれます。

これはプレビュー版です。macOS 27 で初回の Core Audio 準備に数分かかる場合があり、Zoom、Meet、Teams の実会議音声は未検証です。プライバシーと制限は[アプリの README](https://github.com/nanonigit/LivePrompt/blob/main/README.ja.md)を参照してください。

## ライセンス

Formula は MIT ライセンスです。[LICENSE](LICENSE)を参照してください。
