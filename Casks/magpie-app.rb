cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1526"
  sha256 arm:   "c44bcb4c9cb0b09097c8fe470c2a4deb23469660669f78d3b526dc40ff01b316",
         intel: "f6b04ef619775b62bb71e06666431aaee737c931ef939f9729fa5afd1c3c85d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
