cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1287"
  sha256 arm:   "c008ec8d802086d025035bcc7334ec279741209d1063e73b2e26210ffd6841de",
         intel: "38bbf881e7b42cb50f0e7145702aac0572c1dd0b27ab99175a7cb3c08d0d60fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
