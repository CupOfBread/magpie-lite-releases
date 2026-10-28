cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1790"
  sha256 arm:   "ae95f274808ed521988a640aedfdb1c1fd2967e77b9c10709858370dfda7e67d",
         intel: "03621a96dffaca7010942700ef651a94ae4b5aebc5d0d3d0ceb6fc46364d16e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
