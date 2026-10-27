cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1706"
  sha256 arm:   "0caa31391f7e9463980fd3ad9776d3308c647e5639efe59223713f3d2eabd4ad",
         intel: "17d4fff93a522f9d547aec976f75384b7554beb4dc31736eb09f590042f88b16"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
