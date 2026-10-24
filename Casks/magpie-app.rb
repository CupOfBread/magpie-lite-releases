cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1419"
  sha256 arm:   "9b29624750b67cbbf89be5e335dd513caf5b2e8799077c7fa4fdc97683e3894a",
         intel: "dbc02ccc6dc6eb99be1954655f16fe22945750622c6d6a66e58d165108ea0b5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
