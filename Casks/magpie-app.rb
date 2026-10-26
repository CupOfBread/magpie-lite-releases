cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1567"
  sha256 arm:   "b8cb19e831dca94d8753b1420fd9e2fea6332e81ee510647c9cfaeecba222571",
         intel: "5dafa515cfbdc5ebc0d23fd701508861a749767850d656e02724c02ca6c3b35f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
