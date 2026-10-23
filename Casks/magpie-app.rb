cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1340"
  sha256 arm:   "9f99cb9986abc9294d2a2169ad956fad204136bfde96032ea109d1df63535852",
         intel: "a380bfc00a83f27e7e852d4052d2ec412db4f68d4ac828404e9c38d7596b96c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
