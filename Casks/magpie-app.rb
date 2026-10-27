cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1707"
  sha256 arm:   "e8aa45f2ed4307b94bdae7d431c7adfe43ca4c42d6d04c2bb3fe0ca50e4c8d81",
         intel: "d18a6b395ebce88186619958f1a6f8443fefd2ef257c0fc3d19f30a1ccb4b74f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
