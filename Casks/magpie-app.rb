cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1715"
  sha256 arm:   "56adaf4350af147e67a4be0021e6695c61c93bad2c6eb11018ca4612cfa90370",
         intel: "6931f6d020d578c74da724b454e7e8eb24578b9cda2415d020b023f50ac67879"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
