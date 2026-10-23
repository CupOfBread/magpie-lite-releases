cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1358"
  sha256 arm:   "6289bcc8766dd7a7c1ddffb1e444a6f439f34966698828a5a9ff554311339c20",
         intel: "bd16e21190bac8a7628a5a6ae36992c15f83875c0fa5e657757ad963abd777f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
