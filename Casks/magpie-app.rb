cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1442"
  sha256 arm:   "7c2a9869bc387c1d4c4b984d3a62539b47592d0ae313376479b4ea52a7991e59",
         intel: "b445f5a02ab1f668530f91bcc7b3eae554c768cd8cffd4154e40d98b63c86f72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
