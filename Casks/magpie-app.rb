cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1744"
  sha256 arm:   "cedca2d58afa0bbef778a36b7ee1e32264ec24404ee673bf0604adea5b27ab25",
         intel: "a9725a0b24e8bc39eb0a581007aecfcffd10501d931323a0eee842e9ad39eb4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
