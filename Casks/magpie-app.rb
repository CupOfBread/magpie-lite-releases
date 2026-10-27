cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1739"
  sha256 arm:   "57c506e568cc13d772cd244a75e96cc45929aa6688661304bea2b00219dfd266",
         intel: "c6fef9f52095af4409b88d627de36967c8ce7c7b4e08b7cb46920693d833e8a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
