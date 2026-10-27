cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1683"
  sha256 arm:   "8d3f8e6a9c305dc69cb36bf307e85efa1acec3b3d1accec73efd97b72f44eb08",
         intel: "b0b33b5bb078713a261e2744fbfca8fae458e8e0c52c38c423652de38a1c7ca6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
