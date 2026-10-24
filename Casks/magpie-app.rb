cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1374"
  sha256 arm:   "895a9efa1818d11f75852771ad9239d24fc7a9439607709d50f73305addbe40c",
         intel: "dd1384ef41d01422a3054552de2f1e0d246ca2b2b1ebe603beb9484feede6364"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
