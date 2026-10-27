cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1661"
  sha256 arm:   "36936ab1fe4a5b0fff1e347e57568cfc7500a40d2151c4c0775dc825af4686ff",
         intel: "0985f0ea956515e3482a4769f1943f82ae837fd100adb6f0e522a0782d11e614"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
