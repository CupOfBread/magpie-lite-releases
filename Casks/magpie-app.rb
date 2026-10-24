cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1460"
  sha256 arm:   "ccbce9b980a5d923323a7749f62746585b7d8d77367ab4d390c4d6749fd04c1f",
         intel: "9d8f2633b5d8e8d01d35cceff2f527619f0789055a7a985b5eff9b03d15f2f5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
