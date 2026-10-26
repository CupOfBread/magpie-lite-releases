cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1643"
  sha256 arm:   "53c3236c27adc6ea2b8f07c7dfa0407f09b9b78a0d22fedc22997e46ca87545c",
         intel: "d9331541f743fcb5f56de03bbf149841563aaf0597e4c9a09624935acd242f99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
