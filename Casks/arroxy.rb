cask "arroxy" do
  version "0.4.8"

  on_arm do
    sha256 "9cd60c3c37bd280585473fd08d47d792eb8a0e8732c770a54137cd48405f23e5"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "2633eb13d14d66ea6d4f3b92272f84d5919a13141f8fd2a08d29e3709f92fc24"
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
