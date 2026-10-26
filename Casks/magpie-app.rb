cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1613"
  sha256 arm:   "f5c2fee2f33fc363b57dd85f495f568771bda1bf03d5ddc51947134075fcff18",
         intel: "8a82262a8d1e8f919d08836caca42970a2eba415ffcd001cde86084f1ffce77f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
