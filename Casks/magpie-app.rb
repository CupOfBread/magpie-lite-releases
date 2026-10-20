cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1301"
  sha256 arm:   "a5627a0b87ee6c53a397e6195bd69ee1742b4d7caadc0813c1fa204da83aaf96",
         intel: "828e2ab3887305ad28df487615612c73f3fadd4619779eb2e3a1d6c6d8e8e235"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
