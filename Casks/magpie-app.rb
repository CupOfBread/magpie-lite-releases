cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1829"
  sha256 arm:   "0caa6e30cbda61fcc16c73a9034597f0c35f4467f29af97f841fe9662c5d861d",
         intel: "aaaf1b11db6d2f2e00a926783d8687b9a6d09a19e0c182069450a3b92f28352c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
