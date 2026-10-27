cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1664"
  sha256 arm:   "7d0631a60ab0b2b8023d328aad1734da8578d7e3c5c8c2576f8b972207a26378",
         intel: "055a7d52ad740dd6ff213d7581b064c1a37a1d39115e3e8bc60acb560c506b5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
