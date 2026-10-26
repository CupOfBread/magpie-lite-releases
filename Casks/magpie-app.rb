cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1655"
  sha256 arm:   "251e1cf071a625c61d635106541b4948d8ece1e6d1cd641a42bf1378a978c636",
         intel: "0a8cd9576a93ccbecb3bcf7de6a191a70fa8ea07a3485dca1f01c5ffd4357e2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
