cask "arroxy" do
  version "0.4.7"

  on_arm do
    sha256 "39270ba6a962134202a77c8b84279e0e25422395c1c22e45b412ccdbd2ee71dd"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "f570ae092888cc7f60c29eaeca61cb99a802829a2f52be3dc0c1dc1fbeba8c45"
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
