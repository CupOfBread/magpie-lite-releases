cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1777"
  sha256 arm:   "63760521bbc521fc6a73727dd6d1e4179564d509527511d80792a8bb27c415fb",
         intel: "72740bd22a56ff744ecb41766610ac0303667648a1437f0940a76621c861dd31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
