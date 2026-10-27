cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1681"
  sha256 arm:   "c2bca836d308f16a40ec78297730eb2855eaa826ab5ca400f5bc58e5ceb580e4",
         intel: "fbdc43631950bb92b7e8fc1a8abb6a86cd1120c3f1661b232e19651e6d5b95d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
