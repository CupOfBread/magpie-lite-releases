cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1730"
  sha256 arm:   "32ac59e1d145472cee381962d9ada5f582a77939b3ee7ef3fce38c6c1da9c50f",
         intel: "9a94ec5f604d9ddd9316bfc71f5d4d80c254cd3612810c4a1638b6bcaad0e22b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
