cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1294"
  sha256 arm:   "69894db73ed90579e5b0e43073de1c26590bfb730a53b2898da3ee5b5318fcff",
         intel: "744f02282ee0ef98961003e630e88b89517cbae6bf69e27a8c351259fd2db247"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
