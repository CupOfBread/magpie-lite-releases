cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1589"
  sha256 arm:   "cf462d8adfa4c9c84ecec93ee75213f8ab924749a6be6c59b056fe57ea175b55",
         intel: "bcb06a788aa47b0743e82d2f1faf646a58365dbbfb189be9b2beb15a04a84a5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
