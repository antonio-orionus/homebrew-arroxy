cask "arroxy" do
  version "0.4.6"

  on_arm do
    sha256 "5fb312c1cfe9855aec8106c9b740fe1fcf6eee7e57b75c19f28b2934020cf254"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "c96fbf0a06b5f9415385137006620b283b1d72f8d7d4f4924db2c28909836025"
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
