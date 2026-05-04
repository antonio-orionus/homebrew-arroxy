cask "arroxy" do
  version "0.2.18"

  on_arm do
    sha256 "f5024b316a75dd11eb013d91385a8b5c43650ebe485311a15cd703e34c1a724d"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "aed1ef1fdff5cf347b47b3b543ed566b641650c49265be7d392f546a615d7952"
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
