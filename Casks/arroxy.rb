cask "arroxy" do
  version "0.2.12"
  sha256 "af26b5c0d4143c0e28531efe17c5b0a4ecb63ab1e98f4dc2c52658d8959ba09b"

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
