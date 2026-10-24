cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1381"
  sha256 arm:   "27cee3c2792af7dcbb85657eb6affd03c8fc0c2aa1f61feab930df215ebabfec",
         intel: "935deaf2928e67d4a3c4c2559def7701cfc60c056ab84620361a916ef46562f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
