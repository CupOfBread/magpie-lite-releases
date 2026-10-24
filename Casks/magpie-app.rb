cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1449"
  sha256 arm:   "6ad15ce51b9b5b63f28318624b46a30694a6b14051285e05c4a9a8e41412bdcd",
         intel: "5e0949699af70cb2dd134d9a76580295320b9caced97751c01ae40e44e9c3004"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
