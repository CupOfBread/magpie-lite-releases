cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1753"
  sha256 arm:   "554c8d07ae8229353737e218aee4dc3332923cb756f6d005e0e84817e7f97ef5",
         intel: "2fd610bb1da77e6898f54677a7b10f205183f2c2cea5625c4841c4716df9217b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
