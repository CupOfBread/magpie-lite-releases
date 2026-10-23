cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1352"
  sha256 arm:   "42284863d1fb7e49aa6598307d14c64ac311108574b72af7b5a423da83918cb2",
         intel: "315a6e34970fbf62ebf5a49c419277286c7a849df1c874c9e5c90a39dc84521b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
