cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1430"
  sha256 arm:   "f3e72cb81f2c575e8ef1ca91493aa440c487bca8e4c710313111c6bf2dd3da04",
         intel: "7436d682da5fc981fe44f31aacdf9cf5f538c1591ceceffe5c9f16a31a60f175"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
