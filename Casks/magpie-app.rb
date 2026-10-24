cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1409"
  sha256 arm:   "f3d4e70136a7cc883778e8d20196d1cb2edf75df17144d81f3cf30eec1207382",
         intel: "941362222d5c8dda5f1b2feb5184c6ca03c25491fbc0953ae2051e42066217ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
