cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1530"
  sha256 arm:   "b614a382e1c89ae5a397d25144b175b75d3364b07a0527e8db52fb5ab019b41a",
         intel: "eca10793977b4c9235b109acf8b3941ed6feb3c71172ecf8b3c5ae62b5a5f53a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
