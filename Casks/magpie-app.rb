cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1791"
  sha256 arm:   "3f7cc77d9b92e505d299132b525b5da47f7e37f17313e50397d44111dd047452",
         intel: "ef6965eafecf6472b8a5378d120fec30a12a3b5dab899cb4e158808f7d804bae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
