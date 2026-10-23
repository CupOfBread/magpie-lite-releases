cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1329"
  sha256 arm:   "28deea0d00a74c14349bc8d96c1d7bc7f7627f901696da527f72746f09539d92",
         intel: "63f90c1378ac1f4007c83d26fdac46d0165a1d562da2f9adfb89d19307582b18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
