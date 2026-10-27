cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1671"
  sha256 arm:   "536319a4dddaf60c6861021020eb6334ea0164d77712587bc97b591bc38642be",
         intel: "7f89b910e2e16e8abb00fe6b8753d97945d69e0b0575994575c4e6afbae12f87"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
