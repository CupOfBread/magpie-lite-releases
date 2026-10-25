cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1502"
  sha256 arm:   "01b47b99747bae3391454e7f206af8b6f8684b93731db18b5c34536c5a9a5bf4",
         intel: "523e50c5deb3ef1b67badf486c810e9c1e0cb8dcf92597d47e296ea2ad99b7e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
