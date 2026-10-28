cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1822"
  sha256 arm:   "2631557a3dfcfafa6bad319784b2238f47c29a3faea06a5aedc34bca5058578b",
         intel: "27ba2d9fcff57f0b698a03366c69bf95904b7c505f3ba005af7ecd33108226ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
