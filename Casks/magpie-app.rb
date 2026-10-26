cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1603"
  sha256 arm:   "d9ce9fa46e4f3ab3bacf1b959d2fa46077e3fc0a25a00a62a18f57413b0394fd",
         intel: "f2f5a075af892e65ac98dff014c0261cce459986e62ce1c224350289ac7b634d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
