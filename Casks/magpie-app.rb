cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1316"
  sha256 arm:   "64c73082f42e3e55b52ef76349f513350bd7cd0fd1ff304650acd8db56e292e3",
         intel: "8824b57f4aa87229216f4520889ebf8fe66f202769e0a88bb858b43abc1953b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
