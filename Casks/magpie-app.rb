cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1353"
  sha256 arm:   "164a825e46af16631d8ada20e388fdf9fb473a61269b5d70027b68c8f12faf8e",
         intel: "e814adcb8957a87a4ebd9f1ace885be4da2f4c242edb970f88fb7e902ec8cc18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
