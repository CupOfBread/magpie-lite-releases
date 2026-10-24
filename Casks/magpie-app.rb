cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1412"
  sha256 arm:   "0a9136e0cb9e9c20f4561e13b38c5f01b513d8fde0664faa75855c720ce4f7ed",
         intel: "a52f00bfd5847d6d0f21e61f6450d5a03baf5c523474b398227db3a9882176ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
