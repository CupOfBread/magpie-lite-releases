cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1733"
  sha256 arm:   "52060aedb98f0336841c1d78382218bbe0da0b15de186cfea41cda294bf4a124",
         intel: "81351bd663b2d7ca4d82cf9d4d7a808e73355bbbed544385bf9d8ef9258ed264"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
