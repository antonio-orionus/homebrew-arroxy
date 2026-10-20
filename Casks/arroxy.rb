cask "arroxy" do
  version "0.7.2"

  on_arm do
    sha256 "3cb90faca750ca8f6cc89bb2e5319181810eff3e8e8e3b28852b73a206ca6ec4"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "ec8a5e430bfc1ca1d9894aabfea7a576de17f0017bf25ac6e609d718b8bed695"
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
