cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1368"
  sha256 arm:   "95439b58c1bae684326e073f59247dcb4c2d70201f1fe14bb648f4f640ec4b7a",
         intel: "8394a8178a0ca5d1050484183ee8cfa413aa93ff478b5b32ddc90fba560b1499"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
