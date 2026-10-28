cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1812"
  sha256 arm:   "4e3194602d7c99f585c66e1c607c56751baeaf51bb3c22461124bc4042654aba",
         intel: "b7a82e7e0ba0faa9005db6f78a2104d15026d7750840126b01c1a699f3be0450"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
