cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1727"
  sha256 arm:   "049e169f9060b2dda3a761ff2eef5687470e2b12282762afcce76eace32aab12",
         intel: "8227cd0550851b0c05d871f9d3d7be6ff758a8d68a7dcfdbb5d7ff47ea8cec00"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
