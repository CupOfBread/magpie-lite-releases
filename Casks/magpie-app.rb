cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1288"
  sha256 arm:   "065a8fc080b4e5489f383d30c2b443ab0a7edc0df8a554467490bef89c8bed8d",
         intel: "e66388641335ddf1abf73a5c65a4332e30e5d759607da43672e0201032e3c1c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
