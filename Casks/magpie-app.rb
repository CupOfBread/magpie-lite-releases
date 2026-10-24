cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1467"
  sha256 arm:   "a9b3ce9ac4b083ee0e67cc4ba60fa8873cda459f7e3ed959bd0619f845e8396f",
         intel: "9ff3d228004207a70e985d9acc8932cf0f4a602c37c63c233c136f7b34391939"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
