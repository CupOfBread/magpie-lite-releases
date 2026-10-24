cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1433"
  sha256 arm:   "c12f7b443cc08e903444a55e836a82e2a513cfc4169557ee3ab7af9df17dc523",
         intel: "533228032d1d791bc1f2f221548363e9e963e5d68e3cf61aa3de96566be17540"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
