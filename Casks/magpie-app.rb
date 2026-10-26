cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1602"
  sha256 arm:   "f0a6712c002d51be00e9b51783e47c4369a89f7e1e6fd5f29e73a0d95c259cf8",
         intel: "4fa96d2a28dc050b688ccfa8be60a4fffcce28e30e47fb3472cbc74502a75c7a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
