cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1552"
  sha256 arm:   "3f2c90bab8473caef89107bf10d8bbcb77e167c024a655c4502e75e6077178c1",
         intel: "21af041fe7a29bbbf9257da18c29af950f1eb6c85f9364ae62d1f43b2647ce3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
