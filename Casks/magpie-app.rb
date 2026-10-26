cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1606"
  sha256 arm:   "f7c7cff1f2e3af0ebd6e3161fe50bd1cda2351f8eea82875586d81997c5c3246",
         intel: "69bc50014fab49cd3bcf4c33a0f6c3a78dab3f499116d011bbccd5179e03a0f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
