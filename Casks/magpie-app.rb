cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1538"
  sha256 arm:   "20de3ed7c81ce68bec3d10348bd941384248c9f8db69f287df62f7e6b8fd9a34",
         intel: "b40e29898ac01f2991441e6156a737b9f80ad1e2cfd4e3139fe526114fbf6ccd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
