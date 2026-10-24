cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1448"
  sha256 arm:   "cff5db975119b987a21e2451eee5312540ef480fae1f27e12fe2b10553f50d4b",
         intel: "c3a3763a35d7adb986078e6e6ad8f9598f3706d2c622c3bb2e0d29df28abb545"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
