cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1698"
  sha256 arm:   "057aeb68fc098738499decb070396420ce2fc9c192638504629e45c6da18280c",
         intel: "d894d3f7ebbb8b8ab79fc0a5131520dc8fb81b95070b0fdcdc8928fdfa922a87"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
