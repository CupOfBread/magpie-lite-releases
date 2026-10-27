cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1682"
  sha256 arm:   "5e3145e8e8bd4f10fefdefb21650055a4d69cbd35a040fefe332fec59ea82c27",
         intel: "8ff5f13b86f2c398929b4b40a72370a0785b1c67f3a129cc8f29c71e2c702d67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
