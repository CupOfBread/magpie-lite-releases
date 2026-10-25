cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1524"
  sha256 arm:   "f3863cff5ea634db023d2d28a3d837125e53e7570be0636a8daf1b0b19ca1fc1",
         intel: "129c0de1164d143c7536e75dfeff3bf393adabf7fd741385a64e41655563f8d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
