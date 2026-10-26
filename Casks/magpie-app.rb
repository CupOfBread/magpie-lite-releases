cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1616"
  sha256 arm:   "7e61e21f4f316d33514e85c0944080370ccd849a89efa386e0595951b9418db3",
         intel: "db0e8e058aeb5b39ee682cbe60058318700edf92a0d98b44958e5ee574b2eeaa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
