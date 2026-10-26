cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1638"
  sha256 arm:   "f6da9f09f80e2e3127608c92a9f5fd77a82e9ceea81e8e30a25b3142a603c20d",
         intel: "cf53e2ab776549fb8e1245b7e63d6e93601bcb1319d2dd1d7f30de2bb24d9a70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
