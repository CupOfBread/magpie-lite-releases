cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1704"
  sha256 arm:   "17a333b85d0c328bf4eef34003e0928356dd1af189f6585cb50c2a4c6d39b8b2",
         intel: "bfadf6eb8d47cb1c9772f0788e4e9591e5c4e47152804407eb19169cd77e35d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
