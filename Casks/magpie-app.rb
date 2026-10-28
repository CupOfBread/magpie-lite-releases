cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1823"
  sha256 arm:   "10bae386ca354f2b3cc08c4de1ec353883961fbd49475bf960aed5b0aebddbf2",
         intel: "4ad7a701703124d4c0c66dbc430917dfe92afe4cf273d0d907133f5bbc00ab2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
