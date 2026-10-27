cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1724"
  sha256 arm:   "66e58766d963632af9226fcdde43f19ec545df951061b526bfece39a116c3331",
         intel: "3a361be72075c68b2912cefb0427c7ffd752cb52600336fb1a004502f8677e8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
