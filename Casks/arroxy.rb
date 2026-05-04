cask "arroxy" do
  version "0.2.16"

  on_arm do
    sha256 "e9c6ccce67002cd3fec99f64e5465edb6f622b8deb34dea87fff9416c679b3af"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "525888566c017d1ceade60062bd7e71aa3983bd27e020f9fa256438f5b4a33ba"
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
