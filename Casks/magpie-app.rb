cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1307"
  sha256 arm:   "278a5c107d7b50c52a121707cab533ded56092d0912f4efdcc71e522cf753076",
         intel: "8a4d42b1a66574a915f73a6e2a7e060162bdf149ff7a93504b8945e99057ebef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
