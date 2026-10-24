cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1462"
  sha256 arm:   "cafeb00720ff126df817e29eb6421ab40db29435aba0382d84ef796d0e5b4159",
         intel: "21360a1fee2e01e681dd16e7f66998618284a2833d04169cd798dc319c2cc29b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
