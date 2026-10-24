cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1459"
  sha256 arm:   "ced77e18ad923a36ea71f977186f70711257b77fbf057d125d827618531c2cf8",
         intel: "7eeee9daa0dfd18e7a7dc2ffcfda87beca425476f0a03849e07ccc1c40045f7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
