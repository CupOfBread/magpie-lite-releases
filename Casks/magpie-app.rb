cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1645"
  sha256 arm:   "41b3cd4a1c31dadf613683824cece0be7a673d01026376b0b1814a12cc4af772",
         intel: "c413a7b7ae2f8dcccee204fd2a4bf96a2074bdf011f5b126463ac85396c395b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
