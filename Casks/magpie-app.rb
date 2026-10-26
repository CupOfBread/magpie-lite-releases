cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1578"
  sha256 arm:   "804ef2e94254922e0a4381ea3c66c32155c46b6735a8f933f5c4dfcb7385b1d5",
         intel: "ea8e226ec99b76b78b9df92fd3a7c5c0e8470320e3bfafda09240a8d80d1ce53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
