cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1719"
  sha256 arm:   "a49d0c2c0e691eb98c079491f757c2ff3efd3f6c55f8e555a65cb8bd1c7d7c2e",
         intel: "a5419509d672988f1f64276d4a0f2dff17141df79dc4b88b571d96c78e4ce46e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
