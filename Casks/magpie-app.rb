cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1806"
  sha256 arm:   "eeade219ca7bfbe33a6f3416cb9bc0f1b6bf3934eee54f02c64679e676fbac3c",
         intel: "5eda8b030d750f4e0a4209ed4d93804c8b129398cdc4ecb1a540f0186b66143c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
