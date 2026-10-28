cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1793"
  sha256 arm:   "96acc0180dfcb51857134c5e9b1ffeb584cb43874b84b37e8222ab0cef292504",
         intel: "704b83000a3e9e93f05fcae07ddd2640959cd479dad5b433c5dfbf54e3519e15"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
