cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1366"
  sha256 arm:   "2cd1970324d4b47d0171b402906caddcc17cc16ab001f7a888fe68e0f3e6852e",
         intel: "8496b3ec5dd0f97ba93b58f291083a50da7a0f4a79888de12c519503c58ad89e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
