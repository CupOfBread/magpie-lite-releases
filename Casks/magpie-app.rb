cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1393"
  sha256 arm:   "fa69bdca006c491b48489456aa6f534e36df9b95b0debf642067e9d7dea17b2c",
         intel: "01f5ceec3358ec5f909da4487e72aa7fb98e92e270dd5d0e2881bf4a5422b17a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
