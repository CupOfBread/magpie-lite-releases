cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1424"
  sha256 arm:   "68f8f517fce73838ccdedeff347bc436f39a5c64c9035a2bb01c53412c2c2db7",
         intel: "33e936f9c2c3a70c7093ff2c85f9b692fcb393ee2939f4899ba3485c2c8af978"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
