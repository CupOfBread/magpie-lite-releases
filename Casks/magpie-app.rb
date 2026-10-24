cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1447"
  sha256 arm:   "845395d1c4e9914151de2fb6ff6a432930b16b6639d8ec2443c63e1c2f73d72c",
         intel: "f6046911874cd026ebf0f1e35d3a72dc4f932fdd12561bcdea99f78758ec33f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
