cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1789"
  sha256 arm:   "bc8baca9e1c3539c3ec8655307da95d2e6b6481a72ce5f5e9b2d2c4a2558a84b",
         intel: "bd42ad50be34dbe72e3d753b566a3f2567d3d2af25b2b0d9268661b367f6ef56"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
