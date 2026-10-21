cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1306"
  sha256 arm:   "c57e80198bec72142c66ebba25d931ea30477140dbf69747240444f576b162dc",
         intel: "0da3fcdc9a394e84a2a76a738f94c519671acd65d8136761eec30e0f261551a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
