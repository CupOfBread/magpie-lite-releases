cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1676"
  sha256 arm:   "508c1fe8343da6da9ac5454a0c93d2608e905e41b612468a3491e6dfc9bcf21f",
         intel: "d7e951b17f325122c14a099ebcfaa0da4c3cbe06df9c317ab823184bde0e84e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
