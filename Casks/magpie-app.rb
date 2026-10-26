cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1623"
  sha256 arm:   "278898248dadbb65f4b2ebc591c648662df1271a7188ffdac677e1d2cb1eccfe",
         intel: "95eadedb5e3e7f962408f9b1d22daba6f5920a408e2234c5b62f85ebcf578f98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
