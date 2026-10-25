cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1531"
  sha256 arm:   "5450cc6d5d309685f1dcae77bbad99e9ba20da01cb5de962cfb68344358dfc08",
         intel: "2c4000229a8acfcf1a75c43ae0ccf066052e5d4bdc05973ed877d5a2901b576a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
