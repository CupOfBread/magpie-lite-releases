cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1741"
  sha256 arm:   "90b7ca7836e97bb5fd692469d8a9acabe1d073f45850d3dfafceae0f8527d241",
         intel: "6b36ddb6a114d5a8e63094a4af20f11a5bd5d35d3a2f97b315880604cbf7b948"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
