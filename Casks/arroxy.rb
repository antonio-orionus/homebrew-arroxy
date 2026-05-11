cask "arroxy" do
  version "0.3.2"

  on_arm do
    sha256 "fd5dc58dec039d482dde05b85a6bfa8f35b848ff506a9e6dc830395ae798c3ec"
    url "https://github.com/antonio-orionus/Arroxy/releases/download/v#{version}/Arroxy-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "9017fcc73686d60b2f57e22aace7f38f3c55739d5c441b4de5dabfb1953a12fb"
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
