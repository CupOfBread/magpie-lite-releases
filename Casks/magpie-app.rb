cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1400"
  sha256 arm:   "33a99337eec3a3a313f761bd4cd268397bd04e8e2730da67a04efeaf2460c8fa",
         intel: "2026d8921bb874d379541a37e9bfad7f6f33740b8c8dfd67d62a889521f1aa5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
