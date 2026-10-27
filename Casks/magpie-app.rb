cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1685"
  sha256 arm:   "fd4b58609f9e3a6420c187428d712bf71dd5ea890e423e435d736c0118b5c447",
         intel: "bf0ee428672cbec5e7504bc0bd422b72d6d469af011596f4f097067f8f9b7dc8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
