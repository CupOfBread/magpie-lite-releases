cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1315"
  sha256 arm:   "63b5a97359232761d09d6cc850af899e5ec7158a48f1b2d8e8094fd8cbfb32f0",
         intel: "297c1921a59a1c069273bced48bc2b34349dc73a1ecb805b024012589a8c30a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
