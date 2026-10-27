cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1763"
  sha256 arm:   "69a7cc788fd51f09591e172b26995c8cba65eff6b346786d9c7396da3c51eb7b",
         intel: "1f3ac7cd56b06e72d79cf82d3278844fe460a3ce8236308f4453fbe347efbcb5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
