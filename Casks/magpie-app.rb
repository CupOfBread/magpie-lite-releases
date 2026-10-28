cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1817"
  sha256 arm:   "62fa5a58356c6852f08282682aa9968d71a41fd3d7d4cb14382dfa94573c9c52",
         intel: "6bcba763c604c97781df3510bd00df214103cbc49510dfb68d114c1c91d9e31b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
