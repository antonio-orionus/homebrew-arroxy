cask "arroxy" do
  version "0.4.2"

  on_arm do
    sha256 "4c3d340524e4d7a07c0db9ea0cf5ce2a9cd84946037023e822ad9546f85f7e8a"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "0dafc4a117eef6b090f035d731d7115b8a3999214d7daa7a33f8e0eeff22fe38"
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
