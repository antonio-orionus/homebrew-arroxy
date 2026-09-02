cask "arroxy" do
  version "0.4.9"

  on_arm do
    sha256 "94c82bf86df587668abb8897eec617d00e2d873ffd81386cae9c5c566d03bc5c"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "b14b50e814ccd63ccadfe6530466c05e92b34fd1f71f8a364d1f4352eb31e89e"
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
