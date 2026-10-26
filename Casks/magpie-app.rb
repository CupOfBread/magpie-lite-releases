cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1637"
  sha256 arm:   "21f2fd104b7df452fbdb71819826c1a663b3d40f24c3f30228a9e9465d0b32d3",
         intel: "9e3a5ef7d3bb705024130f6840a581891fdfd5b413e580bfa2a167d2516cbaf1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
