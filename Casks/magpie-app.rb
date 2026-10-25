cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1542"
  sha256 arm:   "c02ae00469557f6512f71757dc823a64306a13d9cb763f969631e69ee050a1c1",
         intel: "4613ca0949484bf5e56fc0c5f8c8ec4b9ff28a3205074a087c6bd0c3fc59fba4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
