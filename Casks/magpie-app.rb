cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1503"
  sha256 arm:   "0765db5f9b58e2630c9b537e99b4e00315d72010739653923268141e3afe81fb",
         intel: "e74fe40da532d8709b53242a846ca0831f1821da86a56a6510664e062eb4b7c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
