cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1521"
  sha256 arm:   "ba53a635bacf5fd0376f4ed6c16bb4d318f7b370b9ad7e6c787061937a0531fb",
         intel: "6e988f3070a071eae9dfbf7247736e5eb68a016a489286e7a80a55a974ae6f9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
