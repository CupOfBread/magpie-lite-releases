cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1560"
  sha256 arm:   "5eefcad05ecdb3ea1a2bf8c2125944070e88d1cbecdc6834382f955bee8d0407",
         intel: "bc778c306305bfccc14ed1001e500b53a195a609f326ff84a8faf33a997434ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
