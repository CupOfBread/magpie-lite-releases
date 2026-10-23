cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1361"
  sha256 arm:   "a6a676da535d4bf118e639a98adf10c9d361565a1118dbee49377cc3b912af0d",
         intel: "5dfc502893d00e7f0b975211d1c9997791e185c1c09c20c6c2ff8bd71620a9c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
