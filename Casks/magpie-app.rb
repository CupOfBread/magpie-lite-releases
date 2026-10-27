cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1729"
  sha256 arm:   "02171b97856b5ae0745527b49eb0f953bbd1c0f56a75c5f06056874f54ac89e1",
         intel: "56d494dc1a77031f887eeb1da9d07b95dcc7c5b6fa80d7d541bb1d040a33a037"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
