cask "arroxy" do
  version "0.7.3"

  on_arm do
    sha256 "e73935baab43670460abd4c3cb6054d94e79fc19a7bd867950ed3fbcf2c6d152"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "754bc8d5c5b510034bc5543eab00b870a32afdcc6da43b0b943d4411fe5dd3e9"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-x64.dmg"
  end

  name "Arroxy"
  desc "Video and audio downloader for YouTube and 2000+ other sites"
  homepage "https://github.com/antonio-orionus/Arroxy"

  # Electron 44 requires macOS 13; refuse the install on older
  # systems instead of shipping an app that cannot launch. A bare
  # symbol is a minimum; the ">= :x" string form is deprecated.
  depends_on macos: :ventura

  app "Arroxy.app"

  # The macOS builds are ad-hoc signed, not notarized, so Homebrew's
  # unconditional quarantine would make first launch fail with
  # "Apple could not verify Arroxy.app is free of malware". Homebrew
  # removed --no-quarantine in 4.7, so a tap that ships unsigned apps
  # has to strip the attribute itself; upstream tells tap maintainers
  # this post-processing is theirs to do. Drop this stanza once the
  # app is notarized.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Arroxy.app"]
  end

  zap trash: [
    "~/Library/Application Support/Arroxy",
    "~/Library/Preferences/com.arroxy.app.plist",
    "~/Library/Logs/Arroxy",
  ]
end
