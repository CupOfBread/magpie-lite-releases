cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1747"
  sha256 arm:   "d0883c8ec4206fb8e39559fd664154217cd5c4001b9eb7730479c2dff700cd29",
         intel: "a4d20205ee8fca48056433f37f35f1f475cc951e34ee48f6c931d733fcdd93c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
