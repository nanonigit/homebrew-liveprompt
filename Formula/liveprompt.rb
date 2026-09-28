class Liveprompt < Formula
  desc "Live English captions, Japanese translation, and conversation suggestions"
  homepage "https://github.com/nanonigit/LivePrompt"
  url "https://github.com/nanonigit/LivePrompt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1d628ba682240c5e942741bc85d7d545932727da2258ee6f268bddc8b765799d"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    ENV["LIVEPROMPT_HOMEBREW_BUILD"] = "1"
    system "./script/package_app.sh", "--release"
    libexec.install "dist/LivePrompt.app"
    (bin/"liveprompt").write <<~SH
      #!/bin/sh
      exec /usr/bin/open -n "#{libexec}/LivePrompt.app" "$@"
    SH
  end

  def caveats
    <<~EOS
      Run LivePrompt with: liveprompt
      The app is stored in #{opt_prefix}/libexec/LivePrompt.app.
      To show it in /Applications, run:
        ln -s "#{opt_prefix}/libexec/LivePrompt.app" /Applications/LivePrompt.app
      This will not overwrite an existing app.
      The first run needs System Audio Recording permission and may take a few
      minutes to prepare Apple's language assets and Core Audio tap.
      This is a preview release; real Zoom, Meet, and Teams calls are not yet tested.
    EOS
  end

  test do
    assert_predicate libexec/"LivePrompt.app/Contents/MacOS/LivePrompt", :executable?
    system "plutil", "-lint", libexec/"LivePrompt.app/Contents/Info.plist"
    system "codesign", "--verify", "--strict", libexec/"LivePrompt.app"
  end
end
