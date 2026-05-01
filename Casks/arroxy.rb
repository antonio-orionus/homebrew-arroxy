cask "arroxy" do
  version "0.2.6"
  sha256 "62dd77aa909e20d1f0f415c3e2523545c8ea1e94d5f9d978e55a46e6a4370a8a"

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
