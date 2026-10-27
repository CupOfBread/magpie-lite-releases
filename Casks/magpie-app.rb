cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1690"
  sha256 arm:   "9a00a48793ffe1d6599c1cb55877bb0b6293d93e2c210bfe2c49653e28eafabb",
         intel: "6b58c2e728783f0087a37db944f2f9684a90d71254251d9d89195d4b5ef7e6cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
