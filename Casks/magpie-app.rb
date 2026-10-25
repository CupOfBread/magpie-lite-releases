cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1509"
  sha256 arm:   "3e697897b2bef9436c86b787e2966f7da5a31b068171aeb2b2e6206289611c59",
         intel: "db53b5b1223b81c362f9f9bea302b6229de850578c35ae338716689cd82bf22b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
