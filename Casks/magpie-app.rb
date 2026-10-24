cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1395"
  sha256 arm:   "f6d0b4ddea5f965c6c5c6cd2b81a3dce7b7ab8f054cb67351a7767d21356ed80",
         intel: "fbc2a602ef7b092d370cdd3a74e31faa6b0b212f74a4cce8736fedaa7eb35df9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
