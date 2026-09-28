class Liveprompt < Formula
  desc "Live English captions, Japanese translation, and conversation suggestions"
  homepage "https://github.com/nanonigit/LivePrompt"
  url "https://github.com/nanonigit/LivePrompt/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "d654238fc55ff2e349a93f2095a7ddb4534dff3055399c302aaa160f01d256e4"
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
    assert_path_exists libexec/"LivePrompt.app/Contents/Resources/AppIcon.icns"
    system "plutil", "-lint", libexec/"LivePrompt.app/Contents/Info.plist"
    system "codesign", "--verify", "--strict", libexec/"LivePrompt.app"
  end
end
