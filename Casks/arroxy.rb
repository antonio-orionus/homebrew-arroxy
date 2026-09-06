cask "arroxy" do
  version "0.4.11"

  on_arm do
    sha256 "da46b43f3d653570035834ca16e205700015a120656f8a7bea004c1cf0267ca6"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "680d05a417c0932a5fd1c1d9735d0e1b6b68fc610f725491cb0bc9a7b50ee467"
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
