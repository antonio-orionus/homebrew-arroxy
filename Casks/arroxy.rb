cask "arroxy" do
  version "0.4.0"

  on_arm do
    sha256 "80e24eba9c76cfb1b2d5c396ee52ee222e7a86e015b965ef424744641cd83eb4"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "e5e22faccccd1c422ac1b1a7706f92709d41db347eb1c929876c375ca0a81ff6"
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
