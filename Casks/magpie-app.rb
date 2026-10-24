cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1434"
  sha256 arm:   "24200dd9d9ff003217628ae0d0890992c45ecfd79918706209de3f7d736e9a84",
         intel: "450021c2e2fc61f1250da898744528a749fdbccc5910df6c8f0f4e625da91a81"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
