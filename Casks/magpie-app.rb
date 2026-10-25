cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1522"
  sha256 arm:   "3296706b41a89110de6626bd6232510a09e2f0c58511b2354e2f865f030aebbf",
         intel: "8d36955efb30fc017feee97704760cc835a017bc5ccdd6957c1eaa95163edde6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
