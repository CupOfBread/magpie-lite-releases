cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1365"
  sha256 arm:   "628ba466566f41c6844d2ccdaff47d1e5e5a320d64c8ac345d7636a743cd4036",
         intel: "c967d3983d1c206e30a6c194aa4bac943cb4ddb8c82694003d70f8cb518d0b35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
