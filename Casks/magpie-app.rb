cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1304"
  sha256 arm:   "f88d58b89d212942dd638e3b780e851da75bf782829590e2b9161f048778df9f",
         intel: "5fc7bbb753cb069eba21ae186ee48e7968fd0b5a5502426c1ea5c50da1f78f30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
