cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1338"
  sha256 arm:   "2bfdac6417cfb1409b5166a59ae22a2c6650718ade6d8378da8cec18a81ca487",
         intel: "74f1a1885afc9ab562bf881e5987138ba5bcd1946483a5c9b831818de006bdd6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
