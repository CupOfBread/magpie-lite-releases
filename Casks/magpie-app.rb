cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1333"
  sha256 arm:   "148f52c5e6fdcbc73d9c5d652f4fee0e6d0040a6e9cfa14b7675735f55ee1ed5",
         intel: "17c4daf1d87d166df4eb46ac27e197ed774f67e2f66492f36cc6aa272fa0797c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
