cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1371"
  sha256 arm:   "09d6d39bcd5164fca7c9f3486566ad374c35eaa332f7d2fb1a4aa1640bef4fa0",
         intel: "c90814a52ca0c36525a6dbe2a95af9af70be34fbb5ac58aedc2a82a9f0dd41a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
