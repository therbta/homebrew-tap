cask "devplusbar" do
  version "0.5.0"
  sha256 "0bd5ffe1703323dc98d47fecf8c14baca531c0a8ac16a02ee7ca57afab53a312"

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
