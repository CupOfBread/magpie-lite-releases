cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1317"
  sha256 arm:   "452648aff9017dd2e0ae60b7a277c8530dd3648a1ce4e739aca6ae75a41880dc",
         intel: "8593ca056fbead53802539c059350bab7d2fe73e92040d1bee73954327d7df4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
