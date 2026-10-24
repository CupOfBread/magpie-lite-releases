cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1384"
  sha256 arm:   "0fa5000de82bc8cc32c08fe099b98fbed3ea94af04e514d29d756134d58896ac",
         intel: "fe564cbcc6e6f37a7c6178d380fd932ab45b30662c30308fd32d266680a75ccd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
