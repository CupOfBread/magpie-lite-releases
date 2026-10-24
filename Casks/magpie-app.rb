cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1469"
  sha256 arm:   "e6956629e207ca3b34f007d83f38f11423ce3caebf106eaea7e34a7d7c0dcb6e",
         intel: "8c2a08c710759c86b8cc29c7610320983f538e18287c2c64b4bc753af34eb493"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
