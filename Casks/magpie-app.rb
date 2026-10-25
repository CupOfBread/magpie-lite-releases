cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1523"
  sha256 arm:   "f0ec8234c5acad305348daceafd05455bff8d6be2aee05517975d6b6748e46ed",
         intel: "0d182b02349878dccab75ec06dada9336387c2955d115a079dc8d6db93f588d1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
