cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1293"
  sha256 arm:   "de42bec7e877092d0618529238479e8e05731d287049daa93e5a04c08b3989ed",
         intel: "3815eecc38ae997f5a2bc9744e5c72e98f0921dbda03e86a8eb09c5a7a1250ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
