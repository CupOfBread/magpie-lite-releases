cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1587"
  sha256 arm:   "2c201755987d932a1fe6504472a879d4ae53b68f3be44a54f613ae2d687ded6e",
         intel: "7fcc29c2719438b0339975a312c9d69f5a871c176667068552b24721d1e94c7d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
