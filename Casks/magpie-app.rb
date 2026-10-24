cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1410"
  sha256 arm:   "c3e86862e7db15641f330f30d78685ddffae4f3e66bbcc6bbfdb2df3700565a9",
         intel: "9b03fd7fce5764f035544488e408dc16632b1b3376eb98970fbf848f5be9e9aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
