cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1468"
  sha256 arm:   "77d38125dc64716d46b717a52aa75a2ed7b139c8cf39b3e45ba168d4c4632892",
         intel: "6251466b4cae0f56617790286e08d28e0418a6a5d609c020b5b89404326d81d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
