cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1308"
  sha256 arm:   "5194f1ea13086f813fb1d95129516f0e367211ecb7301cacfe764ba64db79cbe",
         intel: "2865fcca53ccc3f1cea0dd93badaecdb2210538e3e20fa6364990c28e354e2c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
