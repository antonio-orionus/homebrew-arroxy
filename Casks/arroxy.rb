cask "arroxy" do
  version "0.4.5"

  on_arm do
    sha256 "447173c2332c717d2fc4ca5119d4c51f476325856e469e45b1e15afb34b1a704"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "4af5bd2b185a1eba892f08a423f671618bd2308716a0f263cae426059a6b338d"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-x64.dmg"
  end

  name "Arroxy"
  desc "YouTube downloader"
  homepage "https://github.com/antonio-orionus/Arroxy"

  app "Arroxy.app"

  zap trash: [
    "~/Library/Application Support/Arroxy",
    "~/Library/Preferences/com.arroxy.app.plist",
    "~/Library/Logs/Arroxy",
  ]
end
