cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1713"
  sha256 arm:   "e56c044eb935fe6d41cc77832174b8f5963845c14b3b21e437a81773e36efedb",
         intel: "fbfd17240e94525cceee9a0b71b3dd3f393c4701da334b4f446e6c9af37789dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
