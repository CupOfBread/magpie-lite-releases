cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1749"
  sha256 arm:   "ec633c144fdebfa697cd7c7c3e10ebfbf2afde8aec92cb4d6d78037a945dab46",
         intel: "a2a47dded20dfe7a7558f4e9467f03c83a7c90200c26152f59a717adb1fa0fc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
