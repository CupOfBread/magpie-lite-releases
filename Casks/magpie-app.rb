cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1454"
  sha256 arm:   "e166b788017bd65133a76830a67d9f3d0e82947f5bcfaddebf445c2e5d5a0132",
         intel: "e0c5a395607053fe592c99f273fb33c1d56c8e903e11540e1f1e586b20e9a0ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
