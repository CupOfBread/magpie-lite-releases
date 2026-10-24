cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1423"
  sha256 arm:   "b5d36231f5b01b525cc15c62fbe5c5264486c715f33a6b989d056c8ef2b01ed6",
         intel: "97493f87c0cf3819a32678195208429b6b06decfeb324b6e7a2309acd22387ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
