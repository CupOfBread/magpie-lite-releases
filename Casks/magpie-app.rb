cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1482"
  sha256 arm:   "191f7c0d864dbb4e2a36bd9809f35a676d9c2890394455648462a4c77bcaaa12",
         intel: "07bb662a94af5c73a5a7003976d67c82fc5f29164980029dcd25dbbba69d2b11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
