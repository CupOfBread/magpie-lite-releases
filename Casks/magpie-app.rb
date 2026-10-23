cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1359"
  sha256 arm:   "70b5f5ca9bc4af311943c4f1f4a543308a63a63fd753dfc4ccca15a26f030b69",
         intel: "fc508204adcd8326df64ee27cde37d5636a61d77f4a1bb12bc844df0758feb50"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
