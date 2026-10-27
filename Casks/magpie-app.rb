cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1768"
  sha256 arm:   "18a1a3d88e113c506047cfeba947770cf58521d1f88261c9520d11af709b87ce",
         intel: "298c9a004d8d5fdbd1e2484370fa91af934924e53db64bdb751b1399efb5257c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
