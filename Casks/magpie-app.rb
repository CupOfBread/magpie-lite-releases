cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1343"
  sha256 arm:   "44601d050fd30274773f7294831e1a242d0003533438211fa01dfa3217bdb386",
         intel: "3fdec93b439831289ef1f064ec1be0e7aa7db2ee45337821e6e98810418db64a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
