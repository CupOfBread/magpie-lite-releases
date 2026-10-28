cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1794"
  sha256 arm:   "509839a0c2ba156142d562c8649070d7dd454994e4f1016a00c36fb2a3729467",
         intel: "c0cf855896cf772c851c812eccf7e0fbb4c0511f54827290294ae7475f01f8d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
