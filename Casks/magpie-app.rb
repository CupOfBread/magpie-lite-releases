cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1573"
  sha256 arm:   "bb8838288fb83d9946c3e420ca85f1be09c6521d6d3711dac43fa4348e15ab6e",
         intel: "42b9298a22b5b06cebfa7b60cfccd5b7e7885ceccc413c59d1d60d725ce1ea15"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
