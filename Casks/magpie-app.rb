cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1493"
  sha256 arm:   "7d76992a7ef84544f6f92cce36ef2879dbb6e16c9b744edb1f2ffa9207b84765",
         intel: "44364de5dbf5cb15e9207bce3e168d642657d16f3151e2a2f2084723534cf9f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
