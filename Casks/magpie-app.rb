cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1800"
  sha256 arm:   "3594906232e968be13a31995b79bb83604a0c5e22f33cf40cbe771034399937c",
         intel: "e0542bd3170db02366b4a680c210dd524a3b60dad49472034f53d86b346f0aa9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
