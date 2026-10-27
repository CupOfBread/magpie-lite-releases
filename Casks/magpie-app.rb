cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1750"
  sha256 arm:   "bb562f0726f5dc2741ca2fdcc3d08fb557da32e1704164a60b9e1b81844cb96c",
         intel: "59719b7ee5dcd365a80c05187d5fcd06d4f4fedf3ee964d91514d4be2fc296dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
