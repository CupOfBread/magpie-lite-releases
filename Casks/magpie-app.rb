cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1680"
  sha256 arm:   "d9af06b51a9f383f5667d50bfc997740a1ae6921d0d6b09b9be643a3de298ccc",
         intel: "0cd4346a874872c7e81995812ee41e0fc308a732ccc57246bfe65951e015b3c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
