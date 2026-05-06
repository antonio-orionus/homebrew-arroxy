cask "arroxy" do
  version "0.3.0"

  on_arm do
    sha256 "e55e18d3c635cf53cb7b4becca899b0189b91bfc82aba7701a9d75338ef678c8"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "24e5a45a8d37227c24739f2d3be118d92424f176ba97a3dbc9146176b9b727f4"
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
