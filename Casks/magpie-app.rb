cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1585"
  sha256 arm:   "c7c8b285c77b399289bfb6a1f97dc0099aed949bc17bf53131252f487f88b040",
         intel: "a17b1714807c208adcaeff729943923948e0e0bf11196035e6fe8d5c7fba57ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
