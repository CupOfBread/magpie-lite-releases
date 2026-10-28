cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1788"
  sha256 arm:   "df26c42162773c414ef1247c41db5600e2adc31764c8a61fc8c652d02745293f",
         intel: "4139558ef765b7d513037e11173fa4ff6091e1b184ffc8aed5ba20348aaed5ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
