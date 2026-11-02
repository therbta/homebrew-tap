cask "devplusbar" do
  version "0.3.3"
  sha256 "4883aed70c2e555a3e24e89de432cb82da6dfcafd1bcd2046ea82f06b4f365aa"

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
