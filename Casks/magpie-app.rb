cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1712"
  sha256 arm:   "a80e869b90b6d1e0975deb8b0b5a960da727fb8ec505a34f8b8f806c0f3cf789",
         intel: "14854a6710fdefc116803f4dcbc589abf06dfef7dcabba5207af9d9e9f4d7cd1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
