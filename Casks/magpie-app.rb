cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1379"
  sha256 arm:   "2df2a1f13e3e9b4eabf2ff2d2a29b6a261c05e96a35377b8ed621a71da2ab27f",
         intel: "feadf4687719c9c061912605e08085c5e4f74a9facbfe02f456cbf785ea93916"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
