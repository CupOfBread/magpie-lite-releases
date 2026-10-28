cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1815"
  sha256 arm:   "511613a881a25045e2b29f69462b25e40e3ba29a8e2eb1b53bb2af2874f460c7",
         intel: "419c313e52f2aa8443871a3bb5792874609358de5eb75719dab8498bf7065324"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
