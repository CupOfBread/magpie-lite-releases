cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1297"
  sha256 arm:   "5c6424d31fdebf8e3c11c6bbe35467fca19e6430d9143e3e4775ee27ffa322fb",
         intel: "362942484747f4ccfc99de839f375c828ee6e8c58a39a3bdfdcb6f8f0e27d367"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
