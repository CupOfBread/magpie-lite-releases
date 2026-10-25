cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1477"
  sha256 arm:   "af916abd22698aab5b4da607443f48ae7a7c83ee72895650723b9b13d3bb91b9",
         intel: "ec5b8a6fb1402519c986005e4176be345f2bcb8a6d4ad199df052b6a0d9218c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
