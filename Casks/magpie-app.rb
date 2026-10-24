cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1390"
  sha256 arm:   "ed325e8a244731a09821c7eb0dcdb0a81308856536904edaadf6d175397a3dc9",
         intel: "4cbc65a3243615ef3b4c16f422baa37fd5dec7127dcf9e67af07e65aa5ad35a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
