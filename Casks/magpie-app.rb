cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1618"
  sha256 arm:   "1e8fc26869eee23a40c1ae2735b11d058afea0a0939e7d878aadd99f4626c8d3",
         intel: "d42da3a74a5bf96499a9ede3e556337b8dc0da2f92e3b26f03f5678b4faabef9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
