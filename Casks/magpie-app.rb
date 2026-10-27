cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1689"
  sha256 arm:   "0d0bb8495feb67da636354767cf20c30b58dc0be720c8653fdf838557bf95425",
         intel: "12be71df8fa14924c682ee61188cb230be064cb8702c262ca35a330e4435123d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
