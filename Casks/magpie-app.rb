cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1762"
  sha256 arm:   "748b75aeacd255155530935401a62a815384ed8dda8b7858911dda74e4a02e0a",
         intel: "8d949bf0304c8d087612912c78e37d41a9953e81238ff2aadc8173dd834db035"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
