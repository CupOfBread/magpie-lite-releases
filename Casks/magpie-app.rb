cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1787"
  sha256 arm:   "f77eeee637ec89c2ba7a778b94fcf0ebabfc5d0d73a57cbb8170105bb01a1f3e",
         intel: "2ab7669ba5002ff9c52d46cb5fff0c9c2a7ea4e3ba8e51163eee79e04f37f2b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
