cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1347"
  sha256 arm:   "f4b17152be334695dd98be576954503e8eaf22bf656e1f702c58d2c63ea0e6ec",
         intel: "69023b5f8ae9a290e86d6b50018db3e9e5c52a732f4d982e16ec68e62db566e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
