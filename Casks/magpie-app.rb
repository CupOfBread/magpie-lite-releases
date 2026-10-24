cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1373"
  sha256 arm:   "b005013cfc38b6f7222ed4093329384b5121e29519b5be2b72237c8e8a15f971",
         intel: "0352337787d3cc30644424142e8bf3b6752a9bc10432873f0082901f99163c29"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
