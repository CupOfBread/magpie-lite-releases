cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1435"
  sha256 arm:   "d39faee5e4139815bda938a7826f1b8e4652d1100a6b25dcd08f475cc0b75cd2",
         intel: "cbf838b1a9359c5d80d1986b30c8d25ec30e174c1d77e4125860f7edd2a1d900"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
