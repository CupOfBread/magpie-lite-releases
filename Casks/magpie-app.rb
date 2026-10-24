cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1383"
  sha256 arm:   "418318559becea5402e83b5f4cea9c5e8b3814093bb4be81778769f197455fbc",
         intel: "176d448a83153ac5c4c11620710c83789dbcf70916a7a25ecff5be2827228363"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
