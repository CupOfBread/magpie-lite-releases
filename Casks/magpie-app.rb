cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1418"
  sha256 arm:   "329c1165279bbfd0d78eb9a5de7091033926ccf2ef790a88c353539dc3578091",
         intel: "e43d5cdda0c07caacdd2ab456d3487ae035ab6520d1087019d60e60127adf024"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
