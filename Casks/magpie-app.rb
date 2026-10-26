cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1591"
  sha256 arm:   "64b5f15edd43a099011baedf9e7162f81e0c6d4c1f7dd6eff69a2aa136094625",
         intel: "d1c788eb3ba8224accddaa721a2d21d402e1e62ef44f86b0774106544b031fb4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
