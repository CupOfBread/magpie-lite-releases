cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1295"
  sha256 arm:   "eea684e1cd9270359a644cde39d73149a7fa72794780e687e4e3d0d7904b767d",
         intel: "c795b4f519b2ebff5b786be9508ffe70825d7fd815faac362ee865ffbcc65edc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
