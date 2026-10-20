cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1298"
  sha256 arm:   "a466ef327314242317cb53c07e9119bd23901f280d46d24814a8aa170c99e948",
         intel: "9d3571092d7f09010104b810db4f6bf5108308bd8fea6631459ac407bc483755"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
