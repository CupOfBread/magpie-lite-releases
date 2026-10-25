cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1544"
  sha256 arm:   "a98c2363fcb2e3d2e22c2cc2f988a5c1f65a238dde1a28b0fcd53f5dd6e95116",
         intel: "1ec5e6b6d2ca44458eb62eb7e46e8cbefde927a2cc661a51293c9863e07159ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
