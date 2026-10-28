cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1799"
  sha256 arm:   "9bac1a59d61ce380416156c4d0186806972db614480f0a746d1b3e00917a2565",
         intel: "a4aa513f6fd49dd8a0eba7da9abcb180d97b660cff5939c4fbee2ad55f787fa7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
