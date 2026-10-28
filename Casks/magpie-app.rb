cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1832"
  sha256 arm:   "d8a52ba479bdb9965f93c4d702481e9be9a0503f427c7797fdddfaaa00bb4514",
         intel: "3b88bdc5a678a7bb13cd8ae879be297d0b940f8e398d29058f2af738b3959d7c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
