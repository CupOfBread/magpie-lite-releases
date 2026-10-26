cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1610"
  sha256 arm:   "1a4b4ac21ba8d14e1d85e506d3b5e7aa45f8ba50c6fd191ed04cecd40134a990",
         intel: "8574f2b4152602f10ab7539c97a3ab5be74a11f7daa6ce02c6ad28abdd03bbdb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
