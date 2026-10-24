cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1450"
  sha256 arm:   "bbcf2da73f48b0c90d7650e27b0a4ea0895a2d0221b9cbf7402da6a087ede885",
         intel: "776ef32b347ef9487a5b1e8277b93348191e84149fcf0378a8dc5e46531cd14e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
