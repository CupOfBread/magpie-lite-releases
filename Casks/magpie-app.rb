cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1718"
  sha256 arm:   "befdcc2d29ac2145e143ecc6c0e31e8b4d01f3c5bcf493daa2470677b7cb1e9b",
         intel: "7450b7a98a1cb5c6a91cc734a98da074afceda0636e5d9c6548d990461423386"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
