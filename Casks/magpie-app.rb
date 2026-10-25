cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1489"
  sha256 arm:   "b5387d883d16a6c61269da5d90ff0affb56ae7f731ca5bcb7b599f4d91414b65",
         intel: "5e009f185d77483036556d9b1cf28166a1f82d03128ba722246f5404541246d2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
