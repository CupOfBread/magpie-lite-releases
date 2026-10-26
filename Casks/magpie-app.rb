cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1640"
  sha256 arm:   "8476c15c83d91716045f89548002e1251d85ce0ce95f51849b99eec9dad7c84a",
         intel: "be5b42b19f1b68853bd5dc703f561767fd52dca27e508047479d320bd1572943"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
