cask "arroxy" do
  version "0.2.25"

  on_arm do
    sha256 "9bc2c3a8acfb43cf25d929a8588766e48fd70a43f80227b6d1a7fe579c20d617"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "5e9b8d6766cf9f538b64e44374d56b2ae949a22d8c2ff17fe7d1df88367814ec"
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
