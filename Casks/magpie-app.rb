cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1710"
  sha256 arm:   "6f713a51d14d7e35f9bef191512b30b0a2eea8ed866f48949b846409efcd3f6a",
         intel: "6b395210993be9fd4f09e6dccd84b52514ce0575cf500520fcbfd73936cbbfea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
