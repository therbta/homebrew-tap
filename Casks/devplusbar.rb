cask "devplusbar" do
  version "0.3.3"
  sha256 "1045b407769d252a31e6665706cd5bc63d6956d44bf0a3f848d62be6caa06b2b"

  url "https://github.com/therbta/devplusbar/releases/download/v#{version}/DevPlusBar-#{version}-macos.zip"
  name "Dev+ Bar"
  desc "Pull requests and issues from your repositories, in the menu bar"
  homepage "https://devplusbar.pages.dev"

  depends_on macos: :sonoma

  app "DevPlusBar.app"

  zap trash: [
    "~/Library/Application Support/Dev+ Bar",
    "~/Library/Preferences/run.therbta.devplusbar.plist",
  ]
end
