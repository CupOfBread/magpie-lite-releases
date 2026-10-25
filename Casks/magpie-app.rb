cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1546"
  sha256 arm:   "0bc79ae80148a9770a3a90d5152008ad540bed0d4c8258903ba78ae2a5b10826",
         intel: "7ff6a866ba8f0cb88c922b54b3447daebe5eb3d8b62f193c0875e6f851566d9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
