cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1630"
  sha256 arm:   "518a4654380b54aaca8fe2416a26bd4d43be496570e43f6fa2742c8ba37850f6",
         intel: "a01dc6c7a84479e2dcee2ff560a736f74215a4dce08aa01b319cf21dedd77995"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
