cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1811"
  sha256 arm:   "bb0f69feebf75f034f1b445b3bc60e21895657be8a82744871153034d64a5d30",
         intel: "d05046171b32d75e7c36b9403ed2516e2ae110095e16621213332bd7006c76e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
