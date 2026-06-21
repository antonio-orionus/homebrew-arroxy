cask "arroxy" do
  version "0.4.1"

  on_arm do
    sha256 "199208641b63cf3fe9df23015aabf159357ea0c1dcec02dfb1e36cb64e939009"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "e11ec247f0c1f0ce42ba5d043dec5113d21d1154131a759860db9bdde7cbeaec"
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
