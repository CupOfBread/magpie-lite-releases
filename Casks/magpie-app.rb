cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1647"
  sha256 arm:   "96521e77f1d594c4141c112b7ba6d3261129a6042db8b6a7c9eaa2f1e2273193",
         intel: "1d4e9cc0c594d904b52045133754b225a7858662434691f7c0f38e031f960a14"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
