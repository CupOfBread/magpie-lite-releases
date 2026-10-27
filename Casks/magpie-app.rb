cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1770"
  sha256 arm:   "495b7ea768a752d175188992da66ed277531d29a970d194060434f73da339e9d",
         intel: "d9ced913cbb5e5eafbb1733f6d85b922d7f9bb4076b8842b1e0ebe201062ec7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
