cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1821"
  sha256 arm:   "9b1a6cfbb92cb216d4ee03e0a407e9e075cca0944fd1a88e188d48609a5a1b5a",
         intel: "cf20725fe10efbf186a4b72175e51f07ffb3ffaec8ef193685886aa619a9753a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
