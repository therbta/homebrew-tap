cask "devplusbar" do
  version "0.3.3"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/cobanov/devplusbar/releases/download/v#{version}/Dev+ Bar-#{version}-macos.zip"
  name "Dev+ Bar"
  desc "Pull requests and issues from your repositories, in the menu bar"
  homepage "https://devplusbar.cobanov.dev"

  depends_on macos: :sonoma

  app "Dev+ Bar.app"

  zap trash: [
    "~/Library/Application Support/Dev+ Bar",
    "~/Library/Preferences/run.cobanov.devplusbar.plist",
  ]
end