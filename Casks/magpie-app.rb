cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1344"
  sha256 arm:   "ef6dd4a373aa3cd04c7587eba193502868e059651a43ed674a7e06b660145545",
         intel: "080a5955f6cc56088903c567d8fd74f2bbe58b423be1b09bce32bfe831bce974"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
