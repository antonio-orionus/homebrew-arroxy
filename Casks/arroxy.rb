cask "arroxy" do
  version "0.2.22"

  on_arm do
    sha256 "011e1d4f9ef9359e46c55e59cec70fc0357efc2dd2e617467c941e86d54be04a"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "e0d081764618ce942f4c902cb5bca042807e519ad3e7db0f38dcad43ab3a533e"
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
