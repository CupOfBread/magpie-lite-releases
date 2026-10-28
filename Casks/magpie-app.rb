cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1825"
  sha256 arm:   "1498f0bd43cf39c628c3010c082697b5467ea6a12d1209c1b6826568641f6506",
         intel: "29c783379e650107d9ee929bd5c174a42a9ff99c02c0149918fd85e76d22df5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
