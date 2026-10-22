cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1319"
  sha256 arm:   "a5d2d09a0a00c1a03dbfdf128a389387ff451addf53a6c44ab082c8db8eef72b",
         intel: "f62e375aa2e1ee9c43b4f8c5a23cee04c3033d3a607fed9dab720bb894501002"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
