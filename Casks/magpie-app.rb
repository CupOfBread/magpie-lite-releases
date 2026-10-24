cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1417"
  sha256 arm:   "896886eb24d83972e3c514efc31fb87a25e5d0fcf2cbc7bd5dc925447ab2c93a",
         intel: "db4182bd447dd39b3fb92eb0520754443a92c8eae89dbf39a066f39404269e21"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
