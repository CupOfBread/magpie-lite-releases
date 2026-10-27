cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1776"
  sha256 arm:   "ab118142bff71c6be327125baa3aa99332dc74a143e48c39481c35e1b547bbdd",
         intel: "557b10fc06ee2b82b9dabbbf31e2c59e9da34e76ef298c4b607e25a25d87cc86"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
