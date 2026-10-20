cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1305"
  sha256 arm:   "55444f6f87624f8873562de51870af1ecefd278e63296c2bd88615e1c161e7f7",
         intel: "bc83acb3ef4708515c9308fcb39facc0a2ea461c2b32ef154726d99592aa015a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
