cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1786"
  sha256 arm:   "fe1aab4d94dd7d3f4cae4d5da9019e12481dbace93f140c339cbe69ff59d75e1",
         intel: "4262cb8eeb84655fe2f3f623e2231ab94fdf6372e35764b0bececaf5648820dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
