cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1641"
  sha256 arm:   "0ae9831dbc7580c524387552bcee8e12a1105bda9d49a2a77692fb890727d30e",
         intel: "fc1f362fa5e1b90ea61a99fe3ced037b7062d4aa95a881f52c5bd683ce8f5cb3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
