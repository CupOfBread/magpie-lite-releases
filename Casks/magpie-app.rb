cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1324"
  sha256 arm:   "1a769fe259e509a74dddcaa0ba3c915c6f0e1adf30e1b48a7f6044ee9ff2fce3",
         intel: "e9e3b6b621b1a8391f4725b871006bc5b1e80cef9ac1d2a6618f6afa39b116ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
