cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1320"
  sha256 arm:   "ab8ec6562ecf9b4b49d28a579e6c50abe07231b7373469a52c3a0917c6deba81",
         intel: "e5e6c9a11b8b1e731caeb46f7d010d09767da6b1f329d8298226fcff68b99622"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
