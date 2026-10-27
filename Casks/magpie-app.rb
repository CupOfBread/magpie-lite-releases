cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1781"
  sha256 arm:   "18cca8d6bba0f3911f0fd04b99bca300afeaa7753dc15c8a40b878c7e06fc25a",
         intel: "418121af63557fe2b3df4595c614ed05405a9e0fdd329f333f897512f855c60b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
