class Liveprompt < Formula
  desc "Live English captions, Japanese translation, and conversation suggestions"
  homepage "https://github.com/nanonigit/LivePrompt"
  url "https://github.com/nanonigit/LivePrompt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2a38108bcac6023af19684c963cced27ceab44b39be3f9ba3e06e0397dba6eeb"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
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
