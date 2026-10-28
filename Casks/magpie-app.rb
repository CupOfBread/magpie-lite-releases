cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1804"
  sha256 arm:   "a1179e0c26f134d84e98b89616fa8f35c2d79737be01ba043b05a36d074f885f",
         intel: "9307e0af63b0286278a0695099d8531d846609c03612e912e4b5bb325c7100bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
