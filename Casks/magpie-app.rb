cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1484"
  sha256 arm:   "7c45a05dc5ecea1f7ec93c67b227675ac405ea429a0c3d3d6e9f05902c80288d",
         intel: "1637c381c87aff456a5aed14db103a78a358f301657a86d9cdc2a0ba3867ae92"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
