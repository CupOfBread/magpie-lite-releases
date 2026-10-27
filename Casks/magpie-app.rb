cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1703"
  sha256 arm:   "2caaaa3daf217ca055ec802036c9298489f8f34300ae77e1e10f2d19689a3a66",
         intel: "0d7f1fe7d19ee4cc164e085df33bc1b437be1ddae7affaaa9510316d574d4c65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
