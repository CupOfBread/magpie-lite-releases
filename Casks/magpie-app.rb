cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1663"
  sha256 arm:   "766a1de73e232c7bfd2b0e44125d30bbbd2e7fbe4513c1a0cf68a7e377de967e",
         intel: "f39ba83e7bfe9273dce7e04638105eed1e8f8f5c34a0ab6939ea0af3472446b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
