cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1406"
  sha256 arm:   "05d8bb2e3d550fb26692a8b7687a4993d22be141872ade5db0bd1047a9816fb2",
         intel: "821944216d66d592600e2e4f094e6307892c6bd9cd819abb4534b3b1485f7635"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
