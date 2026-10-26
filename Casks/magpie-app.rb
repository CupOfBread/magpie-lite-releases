cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1619"
  sha256 arm:   "a384360f6c31121a73fb80b70ca5e000c1e8a073787c26d97c8486a1ff3c9a08",
         intel: "cb3400d12762b62cb599fc8e51ae746f22c3f1279e6b7a3d77d8bfb3e02e44d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
