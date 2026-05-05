cask "arroxy" do
  version "0.2.21"

  on_arm do
    sha256 "6affcc163dd9825dddc8cc3e0653f3c0ab94542f98bd1c5f40257f72d77428df"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "b6b26effb2f93a04a333153d2b98ed8d2911f0ad50ce0ec5df7fe9804aabac1b"
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
