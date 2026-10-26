cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1617"
  sha256 arm:   "bd15aafe403e6e1edd2fcec1713b535c3f2044ec4e026d3707105523b4c8c5e9",
         intel: "cf39a3867e9094e6d77339a72e8674628c064441cb766da642824df1b7de2a9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
