cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1754"
  sha256 arm:   "d0b2aa15b5381f55d1dd3097c3b32f5a5c8ec904c8921925d73e0ab800d1ed09",
         intel: "070502eb38011018c08165c9f7064db5097e2fb98aac8cd5baf6c2d92882ce99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
