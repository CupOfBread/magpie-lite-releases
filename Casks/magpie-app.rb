cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1699"
  sha256 arm:   "2a3c107801f40234bfc97d99920a390fd11dc3a0cc357697055e2aed97454429",
         intel: "b06251e162e7f8303e48144e027c93ebbb9155130d6b00e9327940c3e58333be"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
