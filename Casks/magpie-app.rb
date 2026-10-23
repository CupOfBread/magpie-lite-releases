cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1335"
  sha256 arm:   "c3aafe63a472e4d43327669822bd44bba57f42d5fc7c62857728a5de350d8ca5",
         intel: "341676f1a649b910449fc740d89fce89bb392a08ddb3e812e95fb6de5e8d6e7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
