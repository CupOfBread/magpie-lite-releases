cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1540"
  sha256 arm:   "35f8dc6554fd7d2f504b24727238e588df9073e14d246f41865f1aa3e75b9541",
         intel: "cc77c1323d4e6bdebc40cdf7587daa682ec3b075d7f17b7f3b27529783b4781f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
