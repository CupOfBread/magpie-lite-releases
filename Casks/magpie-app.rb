cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1438"
  sha256 arm:   "430b955ab820ab6d30202ab7e46535da8e1f62a8811233eabdced94e8b979f18",
         intel: "eda291b0a0a80f45d1102ad4d19807ab5b30a1f2591bef542586651bc12b6e2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
