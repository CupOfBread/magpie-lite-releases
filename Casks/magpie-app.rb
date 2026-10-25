cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1527"
  sha256 arm:   "b1781521a7fe41b1b80a979d19b5960c7afe891c9e5e9a869ea765a8a938d909",
         intel: "0d058837fa437e21705c5965cd3429866631dea0e57fe726e88b042fc5d4238d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
