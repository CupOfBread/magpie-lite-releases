cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1355"
  sha256 arm:   "608ffeba595e69f4f1082b30a443db64d222f14f38f3c57724cd77460eb0faa5",
         intel: "d3cc4cac7e700dbaea7dce81c3c23d02bb5155bb38e5f3f35a49d45a3404a268"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
