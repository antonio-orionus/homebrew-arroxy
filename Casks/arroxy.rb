cask "arroxy" do
  version "0.2.13"

  on_arm do
    sha256 "c233121fdcc86b43a5ece482928ae9f45ce67274d4381228011ab31b5d540aef"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "a34fee2a06ceefd1a3a8d53110501a3e58ef1008d178a0229ef986670d5b75b7"
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
