cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1687"
  sha256 arm:   "583699d6458ebcc0ad9b2d5a903efc56085309229158185e5eee0e688d1dc48a",
         intel: "7c2abf838adfcb68fbbf01bc82c02c2352d34ba20f0ab98728ad158555ecf550"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
