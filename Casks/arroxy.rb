cask "arroxy" do
  version "0.3.5"

  on_arm do
    sha256 "d9ff2fca0ba785f68e556de0cec6268c85ad1fba0f55d999ff6178acbac4b07a"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "a3d6d26267f08d52b76c0fe56a44dcabbb69949c816efac2c9b82d0984d8c82d"
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
