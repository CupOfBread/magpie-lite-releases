cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1322"
  sha256 arm:   "85fa287f7175542ae10c626ebd912fd9ccbb3c4418be560e410e0a53436a165d",
         intel: "87f0d0d4afcc1f351c120e2408755a636b2a62e91c0803f3b487dcc06e38d154"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
