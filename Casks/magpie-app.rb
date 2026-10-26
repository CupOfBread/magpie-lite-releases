cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1576"
  sha256 arm:   "25f4ca0fb09786513522499fddb8f3ee7fbec81e7cc6e5f8d8e8db4e539d1e82",
         intel: "56a8f56f632d5483b40a4a9b1d2963ec26adec337c0d2709065142dd39cfd87d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
