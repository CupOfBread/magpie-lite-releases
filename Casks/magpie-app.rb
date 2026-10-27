cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1748"
  sha256 arm:   "807ad8932d4e2e84fc071d214eb4d17c01939d203c0010fc18fc8562f9fccdf6",
         intel: "87d61ae3bb77acba2d635a9d824a6be223be30e1724effaa800e3442856232f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
