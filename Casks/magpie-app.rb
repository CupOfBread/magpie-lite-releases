cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1677"
  sha256 arm:   "1ad5ebb7ec75e77b821bd0c6dfc11a99aebc3d8772900d65cd531c7ad2e8a465",
         intel: "db241023978f2ab9e384bd18cb266c92dac038cdeccc67ec6c418d0b61981539"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
