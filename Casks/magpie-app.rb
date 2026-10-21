cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1313"
  sha256 arm:   "4d83fd9a44e1d767d1d0b03ef2d1f4c6ec6da8e570be82d1692e1e648e7b449b",
         intel: "149a75cbc8e1febf6f201c7144f0348702b45627faaf28bf2bf04cf4debcad3f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
