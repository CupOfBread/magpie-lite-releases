cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1311"
  sha256 arm:   "b9005d01570411186fd9a2039ee7f7699e2d1e7ff804ef7d53e4887a46c2ab46",
         intel: "a624230eb492e0436c43f172892b7af2b96fa64ee80bc2101b8285a09f1bf7ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
