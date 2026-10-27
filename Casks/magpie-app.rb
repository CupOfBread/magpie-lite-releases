cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1783"
  sha256 arm:   "6a35f6534e79573d7f5716f60f8d8d5f2903e6ef40baa6df40e88d44e1ecb88c",
         intel: "093ef2174c4162d96ae91c2ee2749fda95d25b40258b53cfae9790fead0dab0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
