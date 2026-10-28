cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1810"
  sha256 arm:   "1eac2a52675f2ef80347d0b8ed1a031cc421dbc5d599682166ec885dcd59a3ec",
         intel: "5182f39f8ed4f6ea04f344ab4c9a13be03fbb1b432d79fa2af96e470c738d625"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
