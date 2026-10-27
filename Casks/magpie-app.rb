cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1722"
  sha256 arm:   "5a844ecf44d1b3eb2b94ed3323ee05f296301dd3d57438471554fc64d94ed3cf",
         intel: "552ad91eddc3e80b42ef84feb51d6dd46066f430c14939335e109f64bc7515d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
