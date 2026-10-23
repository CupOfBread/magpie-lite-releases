cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1364"
  sha256 arm:   "464f95c16e0cc6022235a819e2d9b6b2debd3840f1a7490be1057aac0ccade86",
         intel: "cd23843e4fd410751eb05f6e87c2b5cc96cddb2e8033816ee0a2ae239e80380a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
