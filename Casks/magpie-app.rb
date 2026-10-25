cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1497"
  sha256 arm:   "e9a6dca9fcb660c79dab6f655949e39e0c5984e98517aded3717fe7752ee1934",
         intel: "32bb264c7dd559fba0ad9d41c21223b781ec1ab6718548dde168fd9020cc6e24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
