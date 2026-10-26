cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1632"
  sha256 arm:   "563df2c39667c46ab890b2a8bd94a32d47e9dd13648a5a337c498456b14dc17b",
         intel: "9f405d13caaf17c8f41ba10520069efefe8c286c5c92c47d8dda6435c232ee2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
