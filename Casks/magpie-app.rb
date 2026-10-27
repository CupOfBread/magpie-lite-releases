cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1702"
  sha256 arm:   "62d0ddd2f7c394051cf424a115fef44c7ea80e2fde5d7b98ef30e3c442d8e14e",
         intel: "058ee3ec4d96fa8bc2617cc25e0461646dfa2c47a264a7eae4668f0755bd52b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
