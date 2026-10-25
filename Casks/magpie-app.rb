cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1496"
  sha256 arm:   "9576f77a0c5e05abf23628ed7289ad487952c98b6b14a8fdf9c070c2d24f6367",
         intel: "0861e3db2e2482682a058ab06867c5d8cfefa9a9c56d65e1a4e334823d92110d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
