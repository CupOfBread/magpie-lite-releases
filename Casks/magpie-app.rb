cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1642"
  sha256 arm:   "dedb6a393a87488ed41a8fe76fbf1a394a8564be0b1c6b02a25e4cd74d1e1766",
         intel: "f399907813140e24f6bd1aee908a6076a43b512afca797729da860efbfa8a205"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
