cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1584"
  sha256 arm:   "0b96ddb8f350421a6c13e40d014b80f3a29a59421995b9ceba97deb7485f0055",
         intel: "ad1662b0506278c27f2c92c9dcbe9784ce1bd1041e7bbb3067cb1d53cea276ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
