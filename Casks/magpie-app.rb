cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1668"
  sha256 arm:   "ed27c1e851b94082faf2182d215bdd5004fcf86935bb260391eb0b7636f58f63",
         intel: "b72fd1eb2cbf6ed2deb6e88ca042e42c858b221a2a707f34aa128f3afc140d08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
