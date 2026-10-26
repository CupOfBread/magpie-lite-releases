cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1627"
  sha256 arm:   "7d03ce7c96cfa2bdeb5ebb7a01fc9288a3594567b8393e411223305a48233c79",
         intel: "955e72f163d7ff878f9faa05dd2e5045e5454322f485b84f5b5fc0a7a8814897"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
