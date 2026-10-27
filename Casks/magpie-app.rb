cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1731"
  sha256 arm:   "1c19ff940a13de6b0e5f0a5f42eed8a315aa0250066c4ec3050277d79ede3bfb",
         intel: "096afeda2b64c330f843224971a608b7d3409aa10130061c4efb5b84fcbaa816"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
