cask "arroxy" do
  version "0.3.1"

  on_arm do
    sha256 "d5d348abafc7a6fedae66be3651bd53998ea3caafffbb6d9758d87a66a9bd6c4"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "14243b5e3d65fd072a91fe516faa512497b3c177a6d7ed4050c0db974d51516d"
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
