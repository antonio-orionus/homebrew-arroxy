cask "arroxy" do
  version "0.4.3"

  on_arm do
    sha256 "c34b8fcdba8e51d9bf94d2293aa1f6cb284b4d51afa98ab615d3faa4e33f44c4"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "81b3bee4344fb09b525c0a37e664e3e72bfa72800c74b18537e4786e0499a839"
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
