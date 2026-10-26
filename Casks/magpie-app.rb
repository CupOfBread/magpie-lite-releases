cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1582"
  sha256 arm:   "2b658b6c82487c6d20c93705756487085818f024132fa97481e746bef4d86679",
         intel: "d95258170f0aa817b18eeaf49f1e2f8ec098f5d91992a8ee539b4ead56a7359f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
