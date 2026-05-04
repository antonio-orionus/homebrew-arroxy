cask "arroxy" do
  version "0.2.14"

  on_arm do
    sha256 "98c6c3284f7a74868eb17dd79619095e28d6fe75856d1ca18999fd47a2704d88"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "ff92347af6b5d95ac96fca73fb1cf0de3963fafc052c4f373f798e39d1a6d83f"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-x64.dmg"
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
