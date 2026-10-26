cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1652"
  sha256 arm:   "a3ed33b846a8791f200c1114ce458bb1c59e8f214762a19ae27affde93411afb",
         intel: "cd0529e0b64c6665a9399a102d54e892a30b8a3c7ca308b47a4f5b0f74a3e2ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
