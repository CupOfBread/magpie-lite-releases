cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1780"
  sha256 arm:   "89d8682baee814425e974550b1611dce471bab201ff530a5b116354483d962ff",
         intel: "1b32061147df3a09cd27eed7a4bb3e2cc81f7d41dd1e48981ffbc3fd91c221c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
