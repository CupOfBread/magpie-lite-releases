cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1662"
  sha256 arm:   "5265ef6c4ff5c98d09281e9abdab6d9ec7e20b15eff959acd8d0c40a399872df",
         intel: "faec1035350d935dbfc437de120e2b746bf0ba5d29ce230154dd1d29c1797b30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
