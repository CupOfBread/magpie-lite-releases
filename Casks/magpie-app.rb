cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1802"
  sha256 arm:   "16b72d3240e8441e05897aeec6caab10bd63d7e09b08b85728db3ec54c4d220c",
         intel: "7d2e0dbcc8bdbaaaa23d47fb885285a5ff1d93387eb6648d68386aa8411dec87"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
