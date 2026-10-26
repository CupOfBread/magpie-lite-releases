cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1572"
  sha256 arm:   "1f27f9d054ff5b29cb7ea2aefe54e4b794afd24178758d9b746c48fa791b0f7c",
         intel: "75b85477a62c7b2d6d21f8723c9f6170edf87744b681af48b2a1ffcd4ab00d4b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
