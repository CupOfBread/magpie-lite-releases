cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1548"
  sha256 arm:   "16b7d0dbd78a6fdd904aa548c28f47358bd8b6ce8ad10d1124185500ab710dc8",
         intel: "16f2858da5c5303b3020ee82cae83569bbf4f64c6ee0f50c1ae30c87ae37d34d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
