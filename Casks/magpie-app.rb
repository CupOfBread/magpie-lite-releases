cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1375"
  sha256 arm:   "89e8fe07c0baba46d7c30b394a1416bfff7fce4abc60022ec0f5fd3e588b88ab",
         intel: "c2fbcfdb0cb4a5d722e882d0cd8d537ac2248de7d21198b3cae6bc70686ce192"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
