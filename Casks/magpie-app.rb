cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1692"
  sha256 arm:   "f1b06e032147a849684020df20fc1b7aa0ff132e3a12edc439d95197ee7059e3",
         intel: "0da360a843f4e7164210a4efa848b9c92ab9d3c10f98f975b7c1cc31a13e496e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
