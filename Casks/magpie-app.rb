cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1539"
  sha256 arm:   "e4d7b97d4a4bc804136e2a3d67bbafdb6e147e451dc4edd2e7143965210f32db",
         intel: "6d8baa30c9dd6880879cb32c53ac9c3cef6c5e761e6542aad4fe66c9b66a8ec6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
