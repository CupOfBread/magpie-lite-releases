cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1605"
  sha256 arm:   "45df584bffd60f4d7286a370286f82866d22f50dd3af464d901fd126841dc2b9",
         intel: "1a429107945ed26c9cfc7cd50e26adba34a2a0399a0f02ca1ad5adddf82b9a57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
