cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1428"
  sha256 arm:   "ba38044deb54dce176155ef86a1b79f4974275e8795d4972ba020d374c664ee4",
         intel: "413ad8f2d5d925e16b73d4531ec41f0a43ee06eadc161ebedd38caafbc4525fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
