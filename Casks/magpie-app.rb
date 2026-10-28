cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1813"
  sha256 arm:   "11be1a168f234e571fe814e1d097a1b64288109bdd0fbf2adbf3be4c47bdeb8d",
         intel: "01682d94ae0b82c5757ffbebff62a304f56f25f3ab7ab4471cfc67a1fcd1db4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
