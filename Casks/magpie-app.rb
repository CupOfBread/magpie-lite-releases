cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1303"
  sha256 arm:   "8775245dffd774896e386f41467bcc3b2868feca0cb11ac813e03a8433448966",
         intel: "fa9fb7630faab2fca8045662e236ed19db09e07615e146e81a47202837847793"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
