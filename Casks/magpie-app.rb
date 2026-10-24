cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1465"
  sha256 arm:   "c2dbb86d0f55510c3bd95e2ad4f0eef83496ddb7ecfd8058122f08b4fb7e96ef",
         intel: "11235d8c8600526f7de101693f0b0b82c3491832ccd511d5c261ce62321ed4ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
