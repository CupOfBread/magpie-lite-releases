cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1598"
  sha256 arm:   "75ffe0eb76ff0ccb03082279fb656e4231c03c90c3f81429ddb4fac75b993cca",
         intel: "5874c91a79945df27db9818785a25bdcb0f6d32d61565d771e5e8c904c1abe8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
