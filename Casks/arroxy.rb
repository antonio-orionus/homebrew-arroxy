cask "arroxy" do
  version "0.4.14"

  on_arm do
    sha256 "dcf48d7848fb8e94c9957fb40de6b0c62c53979acbfdc1e3de464cf35f11919e"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "f498ae3c99816d7b8373927b7563c79eb0d99dfa27f3b91460b5d14502bf9461"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-x64.dmg"
  end

  name "Arroxy"
  desc "YouTube downloader"
  homepage "https://github.com/antonio-orionus/Arroxy"

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
