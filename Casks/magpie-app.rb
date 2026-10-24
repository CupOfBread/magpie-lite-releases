cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1401"
  sha256 arm:   "8a2a0feb89bd05c570610a607cda9dd568ccb88530c6583c97adbb768b29bd45",
         intel: "5a309e52171462d77ff3c4d02bca7f1f4e8fe51bc88cf8b5273c0c66b5ff1e3a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
