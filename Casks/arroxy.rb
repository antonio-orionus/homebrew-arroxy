cask "arroxy" do
  version "0.2.3"
  sha256 "6129578410c879137c6b622158710b9afcfcfe2d8ac3af72ae7b71a130c52186"

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
