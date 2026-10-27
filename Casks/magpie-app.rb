cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1726"
  sha256 arm:   "90f3ea9d9fda7e3d12269a7d00ed7bb54977f2e531673675e9f393dc15c38448",
         intel: "cc1972d327bd4accb7a6ca9f8d20e4de7ac75e162f43fa1ff69155721f3f6eb5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
