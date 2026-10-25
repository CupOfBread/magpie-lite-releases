cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1479"
  sha256 arm:   "57186fa6dd4dbb5b56d796df7a87c193cb52f53b37cdb82c7d4aef0c5703a29b",
         intel: "582aa318042fea93343dd4babbb25fd544a8f95b9b8a6d04419b44ce5bd0d61e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
