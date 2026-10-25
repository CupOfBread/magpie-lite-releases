cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1471"
  sha256 arm:   "aca8179d446bc4a98a267b4f0e89c3f6806281c06fae1ac08d0299c0a3344569",
         intel: "ff9ea811369bcec3f05fc428c668ccce45b2804099ce0ad068cfcea1b450a02b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
