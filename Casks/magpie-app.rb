cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1426"
  sha256 arm:   "53203b9af6af22cbb1d65877310c13a639931369a49dd58c3a7104bc3a790482",
         intel: "42c0d3b9e0dfa5ed159bd51929a1d01b000ba5b64623d7e92549523c1610f2c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
