cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1831"
  sha256 arm:   "6cb6f068f0011cb7604d02fbe5cdb222c021b584b43db4f21da2ad633afcf5aa",
         intel: "a1fde916ae3a12d67cf7dc2fc949858b233d871883e0d2a1e80fe28cbd377574"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
