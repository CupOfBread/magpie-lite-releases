cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1743"
  sha256 arm:   "ad81018a5e2c2c36c7861ce7317b6385e9ca11db7ce3448466cfd5dfbf7eb374",
         intel: "226fff5b0f23f8c4c2462450b087728987c321e203daa546202d6130af7b9316"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
