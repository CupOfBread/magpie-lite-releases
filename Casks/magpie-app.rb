cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1339"
  sha256 arm:   "d99b23233bd9eb1862599f15b52e98a656d8721be3b53bf4478187bb93066c1a",
         intel: "a53e0d67dd162d178ff8efa7e8e7610bf867ad44c50a4f7c1dd7bdedde53af85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
