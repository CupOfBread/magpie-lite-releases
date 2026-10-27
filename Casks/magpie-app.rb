cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1711"
  sha256 arm:   "f7f1fe6325e902488296df15e0a37854b7c55eb099caaf0cc5fdb3a188851b9f",
         intel: "e990cc25b0f1449de2d731be224541a7d0d19f79d45773a280455b0843e5eaae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
