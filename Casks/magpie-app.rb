cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1798"
  sha256 arm:   "86601c36089cbb5f066dcdd76b505d4ed140784eeb22f74e927733082478337a",
         intel: "0da3ebb6094f21b3df8d4994f27823e4d02d0e9ef71cc4efef53002fb885d283"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
