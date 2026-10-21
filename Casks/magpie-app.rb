cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1310"
  sha256 arm:   "27272563e02ab9c6ad907bb2dc190a41dca733f52ccad834baf3783330ef506f",
         intel: "543d1b7d7d0d8f8187293e26b4d9d9a2ff58df2071d7a64b0cf08d98a0418345"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
