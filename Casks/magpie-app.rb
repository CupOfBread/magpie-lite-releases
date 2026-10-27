cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1774"
  sha256 arm:   "403cbc5f7c3f5934f92c3f599fd3c71421e24f0e7fc5bc3b4f8be6f13565ed4e",
         intel: "d619fde175acdef6a82df01671a84746d0052ca3ce1c787dc9dc65ea9694112b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
