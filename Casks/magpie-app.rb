cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1614"
  sha256 arm:   "33505c45e5c9ba0ab67f2b48c6c4b8c6651ed0e0ac345409b39800a483d602ff",
         intel: "f08d4dc32d292c99b28f1e62ff1e2e4dc2c4d826b2b3ff45be76a9d3095bf3b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
