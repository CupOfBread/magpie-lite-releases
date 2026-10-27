cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1705"
  sha256 arm:   "bedc50cc4b5b7e2b8e28efd3521969f2d06b9b4f378b62c6e96db0bb8d954109",
         intel: "52590337a8a4abf4f226a4a39f7f8b34e77732d243008db36934dd8f36c2a62c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
