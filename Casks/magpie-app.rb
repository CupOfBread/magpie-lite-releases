cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1425"
  sha256 arm:   "13daaa487d34c2214f747ecd45138a72ee064317a8be4c38ef77a297df17cc78",
         intel: "29906480705075a804f3f8629d6d4e0e321ad0888b087e1a4f4aefd1acbe8046"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
