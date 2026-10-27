cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1665"
  sha256 arm:   "5fbb6e9e6ae33148b99a3f8764bb8fa3578aaca79ac63fce7e0f98ec39d9870f",
         intel: "26566d8107252496696e8804ef85539333a7ae43581c00f303acc0d506b968d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
