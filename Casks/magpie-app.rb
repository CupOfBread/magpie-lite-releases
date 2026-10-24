cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1388"
  sha256 arm:   "aab1ac38a44e1fcf27c3953ca3421cfd19912378f05f5b9baff2e2ccb1c8ec65",
         intel: "9744cbabbae1d4f15721fb74e1166e70206aa637e16f64453a416d2a4dc53f72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
