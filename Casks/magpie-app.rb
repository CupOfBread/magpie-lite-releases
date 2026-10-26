cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1620"
  sha256 arm:   "3ca5146162b6ce1b70e7e8d3ee53a7aa5ad8ccbfe0d717efeb1d3047194dc320",
         intel: "10b09a529a052aa94e09bf18628af8fbcb7cc30a09d8c0ae4de2b1a4835a91ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
