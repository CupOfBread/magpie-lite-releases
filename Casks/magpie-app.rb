cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1559"
  sha256 arm:   "336a70de098388d0f3c38809f7ae497e9364fa8e19b99e75ba976803187e0e6f",
         intel: "671c567890efb840d752be523ffbb09335590581aa4143d87e404dde8acac218"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
