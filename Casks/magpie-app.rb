cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1504"
  sha256 arm:   "a7f1f37fbbb756b61865ab675273d02eab750540495de2d8a9c156e0cf24adc8",
         intel: "5e318a29f42a70304eabcbb9bf40089367ca334eaedc1b22589d941489bcc8b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
