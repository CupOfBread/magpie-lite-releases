cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1377"
  sha256 arm:   "c0d9d1ad29413dd8ab22c90c116a976bb337e28689baa9a80aabb0f4e0b3ab88",
         intel: "3cdb6696d7f32228f853b8a331c381381ff13d284f35f279c92ed9d0631cd27d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
