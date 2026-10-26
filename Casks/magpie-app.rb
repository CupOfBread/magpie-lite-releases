cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1562"
  sha256 arm:   "aa527cb8a35d4bfb1593752138e32fe497af25f574c51085cc87bfaf2b9b6be5",
         intel: "9aba98cfb7d899f346eed3b0dacbadf9a4208546b92e6daabd6a9dd90998eb9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
