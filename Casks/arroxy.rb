cask "arroxy" do
  version "0.3.7"

  on_arm do
    sha256 "92b6ec79262fe8ef2e83c1c32382a0a15a63e6e95beb933310912e2ebb9daaea"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "2586dd91d9fff1ac68f694d84cb0bad0729ecb3d28ebafd5b11ce1b6f662c804"
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
