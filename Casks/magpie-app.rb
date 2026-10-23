cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1350"
  sha256 arm:   "2f8762995f579239dc5695af38f7cf06ce80cfb7eebe4b72ee3141c9d8ce506b",
         intel: "f6b431b41e1e1763a17d7e0aefef4d25ad9f13c47c031b8df78d6500044aa66d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
