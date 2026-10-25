cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1529"
  sha256 arm:   "c0469460496dd715310966e3c8e2a2114a3d1c90cdba1a858e3d822c0b790047",
         intel: "a3626d700faaf30da3b66dfec8b21e4fb02f754bd35c0149329125f4830e6da3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
