cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1601"
  sha256 arm:   "44a82883e834c0c74e45f4b1ce07a91358b7aad4813bcfe9e1d7e9fdf39a9bb2",
         intel: "582e6a17be0e8687430cbfb7fe69ee8f0a1d3dbb96fd1658cd03644b30468f0d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
