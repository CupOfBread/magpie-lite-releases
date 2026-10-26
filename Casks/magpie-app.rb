cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1653"
  sha256 arm:   "962ceb632cf2e6f141e14b8ff4656994c79b720ee9e2d3e23dd3ca5028a9b2c3",
         intel: "14e5de4e9ed1db3e92d435293c0a14cc70e39647f1bc056e685db87b5a1b0636"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
