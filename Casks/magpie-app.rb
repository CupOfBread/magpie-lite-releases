cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1292"
  sha256 arm:   "5bc04029bac7df68ab6c7167c9af1a3e9eb647c1c9ecae4499d3c8ca1c370c90",
         intel: "c6d1462fa28bb0babb1cac9c474fc6e924adb41010c150789807a37a02ffb6dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
