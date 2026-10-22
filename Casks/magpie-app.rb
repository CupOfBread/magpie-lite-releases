cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1321"
  sha256 arm:   "c9b85d197bd981d01afbd805b5a2d1d15c1f5b66c74cbb6d872be8b40f1b8e37",
         intel: "035de59d95ffaea5a896b74f746a21ad4545478168508a80f802e783501d13b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
