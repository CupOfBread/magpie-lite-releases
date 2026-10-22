cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1327"
  sha256 arm:   "203be680a191dfa4765774bdbd0fe539ae72c1df05780991fa3d3c43957889a4",
         intel: "418c1423fdc628ffe69b7daf8c2beeb6393534104902d2fb8cafb281e6cb791a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
