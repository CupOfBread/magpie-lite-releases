cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1755"
  sha256 arm:   "ec2e25be62a0b81440d7e8e2c7c2fbd2ece42c74e789845990cb48fd84bad2c9",
         intel: "39a7f1eb5441974d3c2b890720d8e499b784b7cda620bbf947f2b3d3c4070d3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
