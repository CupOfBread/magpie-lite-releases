cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1475"
  sha256 arm:   "7c7cbf51b1c879e0f8e61178c36237105ecd3be4d4e392933bbb95bbfe9959bf",
         intel: "bf4289de51365c6366e3979259580637bae91a6d0762d16eaf8ff003453f11ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
