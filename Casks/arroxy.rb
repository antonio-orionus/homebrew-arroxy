cask "arroxy" do
  version "0.4.4"

  on_arm do
    sha256 "433211c89828bb4e1e58244b4953f779e60c69e760702445f4353eef0b3c23e1"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "887894b6c4d0a4eb34c13e11e9ce8384d5fbcbe4e2d68277db997a468ec2da5f"
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
