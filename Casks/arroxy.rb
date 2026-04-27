cask "arroxy" do
  version "0.1.3"
  sha256 "de96bf1ebc138816ba79f285bcdfa99895e459fe0100a6b6891d2d9ffa741c36"

  url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}.dmg"
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
