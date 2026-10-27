cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1709"
  sha256 arm:   "7a824116cd7b0ff8e6f98d9e5e1bb70704e83f679079db6f454da7cd4c5fbcfa",
         intel: "9ca3ab29085398a94e18e33b33e9654bc3e57f419d53075431f1f59caa2a64e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
