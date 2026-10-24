cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1421"
  sha256 arm:   "6bb6ddee538faef0625a698b0af7d39e6a92b27c2f4553638760420f667ef1c9",
         intel: "478145487d556ff1aaa41eaf29263da81021a949a26bf31813ed836565d95043"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
