cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1461"
  sha256 arm:   "b227673acb1bdcc2eda2b99e041c7f2e422d5cfb57e38a24adbedd4cbf6f79c9",
         intel: "a6350584cb6d63516c03d8d804a45cb93f7b2ff26169c67d0ebbdd69812f7b6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
