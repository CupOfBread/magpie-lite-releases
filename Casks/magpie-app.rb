cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1820"
  sha256 arm:   "ed479adcb24b0d90737905c04fd3a4d634cdcc4fe908a8edad03c5ad847259e3",
         intel: "db91bfc381ec97a0858ca41ff60b078b6d00413c8ee69f5eaa3d99692200aeef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
