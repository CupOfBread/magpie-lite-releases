cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1446"
  sha256 arm:   "65eca6fd97311210be04f0a09dafaffc19e8b387651d13f4cdcffa882642c55c",
         intel: "6568e29a96efaaec7a944f730ed1e0f48abdfcebf3f9960ecfa20c10011c32cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
