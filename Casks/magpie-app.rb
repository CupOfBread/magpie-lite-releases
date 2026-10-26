cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1590"
  sha256 arm:   "3cf6945af719698c3b8decb9f0fad96d7e3538b6bc2b6b3eaf7045b1fb234650",
         intel: "b221e6b9c34ffdd470bf21a9dbf77985a8815d5857bd905c3aa07e63cabc5fd6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
