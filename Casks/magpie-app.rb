cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1631"
  sha256 arm:   "65c29943ecab1b7d8f1fc81519dceb936968f24617ed2445429b95a271934309",
         intel: "10ea9b6293959096abf6c6d337469f8ddd38ab997afb4badaf7b9bfac27a1cc2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
