cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1494"
  sha256 arm:   "884170fb41c3188d0bc1f2083857802efd098be145802225c364a6a160b7586e",
         intel: "c4232eb51714b76afef4522a4663490ed703b4819c4b431b82de429ef1b72c8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
