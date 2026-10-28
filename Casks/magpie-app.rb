cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1828"
  sha256 arm:   "d8d52674a36a213a2f9dc5257a9175e11f754e2393e82b9caca9e803e3be12f7",
         intel: "69b559f7e3c89c348b59d30a6adda61b1a4700033910b07b92106125c8c0c760"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
