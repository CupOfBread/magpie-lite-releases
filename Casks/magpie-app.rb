cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1510"
  sha256 arm:   "3bc2c017683af91068fd7e8b7c04107cba8b2f7304c5146115a8dbe9d4d829f7",
         intel: "b9f456e8810eefba18912391d1bf26e965618dcb9d813966e2ce57038c33520d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
