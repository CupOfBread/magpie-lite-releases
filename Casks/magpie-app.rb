cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1720"
  sha256 arm:   "03d74cfc9603081634e1405efba807a4c1815f693a6f3881c8e4d2ca0fe35aff",
         intel: "9831d2f41dc0b83be2163ecf8dc5f68e4b226e672da64a145e98ce56af694757"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
