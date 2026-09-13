cask "arroxy" do
  version "0.4.13"

  on_arm do
    sha256 "c7cdbcf9e9a4377ee6fa623855467752429c6ea8d8ea89d9194d66d92969980a"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "ae0710e72d2ad44eb57beab5687a7882fc9540420529683f23c2adf80101e718"
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
