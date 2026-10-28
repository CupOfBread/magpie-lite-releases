cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1805"
  sha256 arm:   "b9db477a1fc8850e817b478d078b60bdfff51b38c58628ddbad98a3ba46bbadb",
         intel: "a9795061f364277d6231aabe304284adfb1947323968ca61587bab679f7dbc4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
