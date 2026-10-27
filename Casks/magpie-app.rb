cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1737"
  sha256 arm:   "3c6585ffdc524d693ead2362cd1fea6318128ec336efd3941a8d243ae231bcac",
         intel: "3dad21ff63f92fb762a7cf19dc184c4c674cdfd64460946d7cd27a66dde498bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
