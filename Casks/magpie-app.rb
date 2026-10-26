cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1563"
  sha256 arm:   "c25011c4352ba45d3ef54c1ee8b62b2a0b74774289e841efe09e46ddfc95b091",
         intel: "45506f650208caeeb030ff17ea265431d0ed1a3632088b28e166282dbaa07552"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
