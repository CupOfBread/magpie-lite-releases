cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1738"
  sha256 arm:   "dffff804f9b7457fa1d422d5c1c7f13f14424f285e5da07fbf7eba9085b36b2e",
         intel: "a0c3fe6774d18005bf25a9d71f411250e1fa250c1430626d295d51b4f4d65e04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
