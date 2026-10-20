cask "arroxy" do
  version "0.7.1"

  on_arm do
    sha256 "6975e01511c570c559378ba175b4ce4e1db40f1073ffa7403205c918f85dd76c"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "4c9c5828753446e371b85d537ddb511b8054ef04224de421d6a5b2011d579862"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-x64.dmg"
  end

  name "Arroxy"
  desc "YouTube downloader"
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
