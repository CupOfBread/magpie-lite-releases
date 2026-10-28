cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1803"
  sha256 arm:   "ccf2bd0027c8c2341044c612d18e41e5c0ed32e21ca5257428085a2e050070b0",
         intel: "6146f628711d033837fb0e2c957371201d0a70c31e300a01a0a13e0b1935717e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
