cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1299"
  sha256 arm:   "bcc80946eb69ac97f08f19922f39964cbef57624eeaebdff8681c8d8c3aaf8bf",
         intel: "b024f9840c000c8d2e8193c52810fbc2d2f5d81a83ed39a41df57358b54a383a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
