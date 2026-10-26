cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1629"
  sha256 arm:   "e104ef5d9852678a29674531a0df61bb20b54f249300cd8adf4bf74e90269e13",
         intel: "4998f5923f8ed1f986043d6062e0ee4abc9829163c870309f828600c3f751b5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
