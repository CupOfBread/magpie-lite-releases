cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1681"
  sha256 arm:   "695250ec6cc372eee183d483084b265feee31eceef064ed6fd45a40c55dc2a64",
         intel: "7dfe65291760e0bb874f183760176e49ff4e6426ff9349c80e5478456301172e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
