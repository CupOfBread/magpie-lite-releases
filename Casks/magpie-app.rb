cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1345"
  sha256 arm:   "9ed82cd95681c962941a1963159ccdcd1013a6fcb01d7b838e88367ea0071467",
         intel: "69429a4aef818482440211ca89b7d3996e90850b9eb55c5231553f5cac52debb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
