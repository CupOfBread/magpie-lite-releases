cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1480"
  sha256 arm:   "8d1e5f2f6aab95e4edf0ac3637afb1524e6043d77037dbddd2a040672937325d",
         intel: "2e95aa2f6cd0818547acfc6adb715d3dece015b69bb3a7c46b61503ec47b4c6d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
