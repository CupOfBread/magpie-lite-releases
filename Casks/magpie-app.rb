cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1581"
  sha256 arm:   "d2966247857e69612d4dcd94917486bd4b15b096eccbe8f8d1681a29849d07aa",
         intel: "f5daf1a20251d280f766f0f680d9b2a4548e5c19be0b377881aae5efc3881cf8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
