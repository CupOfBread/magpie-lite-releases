cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1615"
  sha256 arm:   "374479f3af9668eae54196532b21313f513cf2e674a2297f8a88e750a8fc9a22",
         intel: "0dd3f21052d8b61992c7f101794c9c93e04ba4b86b076defb27976e9fe89643a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
