cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1639"
  sha256 arm:   "9ff7304f2c537bd52b0e4042ab578fbcba244080f7b7e855609213a3a589a12f",
         intel: "76092b6ae02d0846edd6643d6309b8283877ceb1e5b65a0c99a84cecb407e2ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
