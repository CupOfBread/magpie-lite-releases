cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1363"
  sha256 arm:   "2dff4326fffe10f0c57625036b92518be4ca65436be150fc9a21c2647540365c",
         intel: "d31c0f8e4d96e9cdd2219d1f69a4cc67e43c694b67c9b021ebf0cf2d757faafa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
