cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1427"
  sha256 arm:   "5ba0d6c8978b3292c1347a581b30eb48abfc0f894b7d853faa1293c1fe43458f",
         intel: "fc20a06ce0c7c0a2e01d2b092f868404748d62417df2a98f279e6e1222e13ee3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
