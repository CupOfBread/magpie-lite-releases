cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1330"
  sha256 arm:   "3c46737b6851034fe3ea7d3169140ac54d5223403eeacd7e1e1d0637c08ac77f",
         intel: "67048694d3e04b090db5855d7a2cc8687892a1fb4cae1f9722f0dbc34807ff31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
