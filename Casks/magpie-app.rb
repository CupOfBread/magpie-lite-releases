cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1814"
  sha256 arm:   "c8f29c3e0ff1fa6f8b30d4de8f1888e44d27679eae1f54c351e3edf8678a6cf2",
         intel: "111cd6d935e7999e5d472b893832bf800811d5b30bbeb461c6da3930087ed20d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
