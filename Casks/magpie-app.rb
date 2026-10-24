cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1439"
  sha256 arm:   "9a016632c1ddfa1227c594d60549146e0dcb9365291a49e3da42342af8a1a5d7",
         intel: "9ac7ccc0a41e3ebcae271f5b0cc1f39fc2ee9e36a386d6523fb38f1941d9bdaa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
