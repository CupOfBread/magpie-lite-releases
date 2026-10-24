cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1416"
  sha256 arm:   "9cd64c43f0b01ffd96ac983d8b1b708ecedc8b9d97faf3700aa4c85a5dfaf806",
         intel: "50d4a9fcd269277ed549242cfecff64c30adf649310219ca1cf478d82e5abcff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
