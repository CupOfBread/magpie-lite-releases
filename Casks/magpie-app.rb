cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1669"
  sha256 arm:   "1a0e8c49f43c15f4704bd38f65e466e968d82aae28343740b3ee2ac020ad4b00",
         intel: "cc87073946505cb062686785d02d51051b806e18fbd01968cdbed5ca1baa32c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
