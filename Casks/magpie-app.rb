cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1672"
  sha256 arm:   "42f3c97633c03b4d94596ced1240031275af3a127b92115d5755bf9be8931a2c",
         intel: "c69331bca36f90b2c018b057e2aade47483973fa3c0ce1b5e2f00f862c648c5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
