cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1455"
  sha256 arm:   "64c236605b426e955ad002cf6f68af03caa63852f57ea95cf3bb46b2d2338425",
         intel: "0cd014606f2857a6d3235ffaaa62ea13c5df7c5666777207d4577bf3337fd5b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
