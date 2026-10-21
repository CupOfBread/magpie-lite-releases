cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1312"
  sha256 arm:   "b1e632b1612749f0f8fb4062b7f9fb87a65a1efc7f0c45ad8e39ca9d284c7831",
         intel: "33108811f447d823f4556730c166acfa7a329bce4c8fa25eff7cb90a2b87c3ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
