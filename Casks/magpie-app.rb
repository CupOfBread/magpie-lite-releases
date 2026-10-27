cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1728"
  sha256 arm:   "d01ba65ac0c8f208ce105cb12456fd685663cc740a6c3a9a55748058072f7c1b",
         intel: "d78bf7c69d87c1e802a13625b8d19f66d3080d4194c33622009e46aec59da0b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
