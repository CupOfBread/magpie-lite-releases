cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1599"
  sha256 arm:   "db7bd91b78fee75f77386be7dfd95769134c376e0c95f3444c225d54f6fa60b5",
         intel: "593c9e1c17df9c99db536daf69c49bdb8c13f0b9570e4b8675d83bc63ecb27ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
