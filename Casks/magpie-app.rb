cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1415"
  sha256 arm:   "e12541a6dbf9feb8fe8170884c98e8157ff6ba863c627ab6382197e28b1b8f45",
         intel: "aca8b20b801e9c9cba0da04af6541cda53f8dfe687e2a2761a14e420389fc241"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
