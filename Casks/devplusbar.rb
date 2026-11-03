cask "devplusbar" do
  version "0.4.0"
  sha256 "e337cba05441eb69515f12a98b579c4e4782ed031138110ab6a7a086558888c9"

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
