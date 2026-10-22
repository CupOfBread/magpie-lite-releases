cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1323"
  sha256 arm:   "3cd5b2b4381c4d32e922db50cf9f58b13fdf613a5a3d964bc64520f997e6bdb3",
         intel: "96b1da5097b522b779daaa2bf79d23b3c096a8d9cc645d303c2ddc812b014506"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
