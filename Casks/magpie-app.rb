cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1807"
  sha256 arm:   "283f27940286ac5be8c02a670f6fa3104da135ba784c1936f3712f2c7af2f3c5",
         intel: "22605ecefc7c12cc3b3372a1353ca06a144fd1c715bc0899c6c86098dae570b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
