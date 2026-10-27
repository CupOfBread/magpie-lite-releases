cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1708"
  sha256 arm:   "89f91f97ed5e4c0ecb122a23b34abcd1a70018b426fe84a31051ddcd3aa92d95",
         intel: "9305db0967fe4d9c6f67a19a56c570629870f8a2d7cade1cc90177f39e3b6fd1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
