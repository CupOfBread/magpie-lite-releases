cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1514"
  sha256 arm:   "f0663ad827ea1b3cef2a704f2015b6c21395d20b28daa3d9848bf58ae95b6410",
         intel: "5f75dcab7073d4921a8f0dd8f364cb326fe1593a7155839b43fd45ae4e5e6842"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
