cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1772"
  sha256 arm:   "398afdbe236840efc18bb3493f9a35d965fb5dc694b3a6a7ced88dc78a585a6b",
         intel: "666103618b8893d0c80a18fc0d2413941f6858850ee0b5d2633e63cb65aef19b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
