cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1453"
  sha256 arm:   "ea4d8e9707bca3c7c8e0d8b9e25375a45c0ceb3b9441fb22adeb2387d5e5fba5",
         intel: "0cc812c9056be39ec9b4d3c46dd6f39f8cb55121e92e42235379ac43d716fbda"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
