cask "arroxy" do
  version "0.3.10"

  on_arm do
    sha256 "d3b78ef99a4a6446edd4931fa25199927626c676ae9d1d2d10bf37f9e7383b42"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "8e50be78ea0291deddc6a4dd5da4632dab08d8a35bd4b283137d55e271b5a470"
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
