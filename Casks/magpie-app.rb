cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1636"
  sha256 arm:   "0f46e5d36cc000d681d14caf073646ba9a5ba8b61fa8883382f3059de810d5d2",
         intel: "d20114c0389030f1c13a9fc93d13b623c6ed89e127e09c353e221b04f2b7f4cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
