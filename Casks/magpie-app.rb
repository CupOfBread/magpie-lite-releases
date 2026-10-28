cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1801"
  sha256 arm:   "fadf1a66c8d72200fe08f0c9431fe6a4a6b62fd1900f19c51cebbe5dcad8751a",
         intel: "3da82a09e347c4c7fa0d9d90a10895d549a24f7f1a71c58f52c1060981cdbcc2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
