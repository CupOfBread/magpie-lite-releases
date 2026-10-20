cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1302"
  sha256 arm:   "cc8f857b6e37e9cef40a27db0cf414e924fe85282e467c8e2ca393d67b52028b",
         intel: "623fc323d441b897cecd048ca7faaca0d677067e7be03b83653595d619ab0d0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
