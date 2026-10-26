cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1583"
  sha256 arm:   "031b02c568ea07f543c5375706126cc6a6b2f8fa018d431c34803709aff88c54",
         intel: "e3389fdb9cf480dc751be7c4af85bc018d4cde14b19df0b863d57503035ff713"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
