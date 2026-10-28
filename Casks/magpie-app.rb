cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1796"
  sha256 arm:   "ca819a8a6ce8439faaa79ef3a08f3a6c45efcad53a1440941438633ddfa38081",
         intel: "f716c0be4ea04ba9c48718fffa223dd9ceead93a5988125719288f723db3b6fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
