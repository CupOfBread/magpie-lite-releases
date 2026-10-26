cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1626"
  sha256 arm:   "9a4d9a5f271008cbcb2037af9480570222e0af19f7613ca1bd5a1a0f6b3d54fc",
         intel: "6ea8e5d98c5b521ba52ac3dd23401b721f0ba1e8fcbcb7d6e5a300573d4ad177"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
