cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1678"
  sha256 arm:   "16d4c689cb1b348a211040641612505f8d000cbd2d2c1d33aa1824a5a97acc18",
         intel: "5eb1abdfb98b436aa4e40b7907c722e6f8fee03f4679372943a15b8ec94c6e05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
