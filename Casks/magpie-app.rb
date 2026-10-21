cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1309"
  sha256 arm:   "efca8f9f5f13c10366cd70cd260c454f7319d0b9cf0ef11b88ea3356cc8a882e",
         intel: "529926dbc27bda7a76e4f6137af04e7953d529a907fc90f6cadd408e9782ca67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
