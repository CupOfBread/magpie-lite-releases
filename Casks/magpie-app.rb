cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1600"
  sha256 arm:   "39494431e47386153f75f57397e903314129f83cbdf1f83ca0c4f1d3ed694110",
         intel: "d42c5999784b56de46a34a07c9c0854ec33825ef21528902ca0153a94b318cab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
