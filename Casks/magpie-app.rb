cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1550"
  sha256 arm:   "2afbd8fc91752b2ea9e8d4a338eec5f2d80ff73a84f838b92dacf6fe2238a766",
         intel: "5a4c014196738de4b193654c9be46ad550cf507514ccd8c1de953973ed8eb2c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
