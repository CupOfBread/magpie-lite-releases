cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1360"
  sha256 arm:   "00dbb6733685fec0fc3a128392087a710d74a6061a9d5328a9ce24db76d8bd8f",
         intel: "6be4cf6369671b9e07d9c3f5479aca4e6c47a97d37ffce967a0b55faa27bb1f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
