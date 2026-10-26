cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1604"
  sha256 arm:   "812a014b033db5e4a0ad44eacdbf45dde71f280118c4260bac818fcf341a67a7",
         intel: "af5a589854d69d60ffb6d58b7ac8935d10d6e76ab40c546ba96d57e799f64c1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
