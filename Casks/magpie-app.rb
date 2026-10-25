cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1515"
  sha256 arm:   "0e0a067423d4c96b30f45b6e97da86786e7d60970c3f426a2e9c8067dd471794",
         intel: "7d627aa84935e052db548631b8519782e7cc5ca07d6e97a08a7efdfe10ae8ee2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
