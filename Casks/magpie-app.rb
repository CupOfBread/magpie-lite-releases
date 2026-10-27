cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1784"
  sha256 arm:   "29576ae82dd37105e4e79a409dc569feeea50dcb7bbe72c384405685876ebe61",
         intel: "d1f1678af0aaf67cea3d84bd30e5329240617a3c7d14b693dc6c2148f913397d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
