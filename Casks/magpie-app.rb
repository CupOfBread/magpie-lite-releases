cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1376"
  sha256 arm:   "7ad9603cd73e207550dbc2c64e743e4e097732cbc9e72b0542f719f0d538ce61",
         intel: "028b325724eba57458c778e3e289968e63765d4a4e29ecda067b6a1d1145f38b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
