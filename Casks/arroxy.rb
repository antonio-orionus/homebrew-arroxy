cask "arroxy" do
  version "0.4.10"

  on_arm do
    sha256 "2aab7f6edf09ac8f0d11b7cf54d4f0e748e58efc6288e7fbd208e0a0fafced8b"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-mac-arm64.dmg"
  end
  on_intel do
    sha256 "a2bc21591232fa9ae509165b3bc2e0af961884d18017328f5568faf58e9ca37b"
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
