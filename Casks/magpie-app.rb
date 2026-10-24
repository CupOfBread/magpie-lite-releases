cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1403"
  sha256 arm:   "e3a00aed776d0a2e99a3a7fa62b3ee8b86a61c783191e4903a34c1bc9a93b913",
         intel: "8f6870d047c4188366ce4fd04be0fec9af134cec0b0a8b76502be5bf4eaf6311"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
