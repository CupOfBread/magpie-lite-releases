cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1500"
  sha256 arm:   "af63f50bebf2223f0d9bb7310c25cc874e37692813fd36335c72ddcca3161858",
         intel: "ee0e554a9e72596cedcc6854004bff30bc6b3d3767f8c8245733d0cff0a22c79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
