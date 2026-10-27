cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1757"
  sha256 arm:   "48cc6ef32ea3bdd9bdeafcd980eb6085cf2c07ff33767cb930083e9f532b7dfb",
         intel: "12ea18fd1b5a5d22e989ee582359a99a3fd6be510875bb5b5953548e8dba57e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
