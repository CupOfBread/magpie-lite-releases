cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1464"
  sha256 arm:   "f568c06a9b6d4ddcb5d7740886e47ca3c68cda656c362b6ab16de7745ca2f429",
         intel: "2976ee94e1fecb2cbd41bca30393991b5fd555e129dfbb0778af72052f41d4f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
