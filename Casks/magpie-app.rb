cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1771"
  sha256 arm:   "a36ca9af4510c44a290e4909a37db25c223774e2d3f4ad757cd1d61a63b44bea",
         intel: "bddcd5bc822ba8d5343a861995a6e73a7c3f8b9b2b18f77d4f9dcf4ec7e7dcd9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
