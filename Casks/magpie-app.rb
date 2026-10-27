cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1746"
  sha256 arm:   "115148357e1e5ae4cf2d7e59725a6afb398326ca8d5c33209fbc7bd417d8495e",
         intel: "f8aaf94ef5d544928d942bf89a45005c802a1051ffdb8fde3262d9284c4d04b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
