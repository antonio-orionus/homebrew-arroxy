cask "arroxy" do
  version "0.3.13"

  on_arm do
    sha256 "ce68b83c7e2aad7d012c74e7f194aa3abc3aa64a0a42f07df54aab4750d41386"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "46d4860744917e13be48b36b429585fc5f7875068ada9a3b8b605fd39e686d36"
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
