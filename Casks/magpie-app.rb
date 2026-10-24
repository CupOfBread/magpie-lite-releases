cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1463"
  sha256 arm:   "8db901fc6be87525c0b6b4d80362577f65a2d667a7476d319e4f0f00ce3fd20c",
         intel: "547e548712ce45baa8263292fd6fa7b163da0a3e40e947bfdd55ed9e40fc21e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
