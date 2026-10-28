cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1797"
  sha256 arm:   "95e35545510d9b5cdda3e655ce10cdb1be9a2ba80312d19a3698926afb45ef32",
         intel: "5ed8fa0ceff8bbf38371e42fd285485c546cf015c1ed1eb1ce71bedf5fc33b78"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
