cask "arroxy" do
  version "0.2.1"
  sha256 "7f8f3cb4e230fc158f95ef8241a773f17aa27640d1488bab056e92ae8f4ff12e"

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
