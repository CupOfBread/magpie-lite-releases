cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1513"
  sha256 arm:   "038b820a10b4f516017671d5bf20b19ed05c3d4cd39873842486c56d89ccfebc",
         intel: "185e33b7a74c58818551b7b87b8789a426fa3034daca5cf0469fb6e66d625d66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
