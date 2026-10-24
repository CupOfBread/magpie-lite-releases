cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1413"
  sha256 arm:   "cefe28aeb5de15f00ec682d1af8b08b28fc05935a22ca4a8f1ed2944d90b215f",
         intel: "106a095098d773ea982ae3286b250bd3c83474c16df2e557a05f0e1bfcef5602"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
