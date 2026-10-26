cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1607"
  sha256 arm:   "ce4728b094dc44fc1292e35df44cd852115bb2743ccf2e13cff509c9072bd8fe",
         intel: "21b1deaf9f40155abd78ccfdeee16bb7e9c8b777661c4c8c44f4789d9c56351b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
