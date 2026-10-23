cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1356"
  sha256 arm:   "1d763de3f4e940dd4e91e53ad3cfb56fdcc85129c734f27aa39465dd8d44acb1",
         intel: "4b4e155467869369545bb9774ae8ded90a8b23d0a26d67a134cbc0186cdb4680"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
