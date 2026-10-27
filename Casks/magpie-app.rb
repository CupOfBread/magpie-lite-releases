cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1684"
  sha256 arm:   "89f4d527bd7a138570f54622042ddd96f7a6698b2d76280acb0a3a413a415434",
         intel: "4ccc641e21de0e0117b5f4895dec2f90c1e8c86da13eafa33b260f461577f584"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
