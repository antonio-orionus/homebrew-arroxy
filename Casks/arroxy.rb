cask "arroxy" do
  version "0.3.12"

  on_arm do
    sha256 "a84543c785df92dcfcd46bef4e0c5477562d649d1e760a864368321a05e8f1c1"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "f0f6a8c212b91818c17726cceb2c524b9c0564133e32d8ef6b7a994ab1bdd102"
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
