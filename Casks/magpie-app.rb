cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1580"
  sha256 arm:   "e76035029d4efd7868f882b666b5c5daccf7376c4da8a731ab2ccf2d7ed89ae2",
         intel: "1f7bb60602c65bd1f8bd16cb5779b6f27c7bbdd1aac15d1a89fb4746721943a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
