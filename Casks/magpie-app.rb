cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1792"
  sha256 arm:   "ba12aeca2411395429b532cf111ef9898ac3e35ed2219316fbe9ae0c06412b36",
         intel: "e8f1183cec8e6743a50285270a3af80db9923b4cc506af307d752092e3c5e69d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
