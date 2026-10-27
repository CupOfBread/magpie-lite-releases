cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1691"
  sha256 arm:   "01ff6b565844d60347193f2a7e73ccf1e1bc57a4856b123619d22d34d32eb1ba",
         intel: "ad6b5068c4f5821f28f6f7c759c8bc2165ea47581292bcadf4038833a7fbe19b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
