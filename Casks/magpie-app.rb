cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1758"
  sha256 arm:   "df735e906f533061ff1b5c33c5a7298ea331bbfc555342ad7164c9c1b6195eb1",
         intel: "2b0bdcf429677b6d74db0940d5acabe3489a7c4797b60bd977e9e325fd3847f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
