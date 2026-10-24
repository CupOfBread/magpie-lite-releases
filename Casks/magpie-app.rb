cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1398"
  sha256 arm:   "ebb6b2cec510aaa004ffe5f533cb259829a7543d4e9224a5795d0d8dc25a13f7",
         intel: "36c9653d6265bd46288e9c701241019ff9dac60c05f0374f41e65b341e8754ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
