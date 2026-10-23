cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1341"
  sha256 arm:   "63ecbf8c4a9dd77109fba355fe47ec6d0dcb256911a0ffbfe436a5fd1ead33a4",
         intel: "5eb4c61cfa31ec3a9cd6585ce87ce32f36e7b67325bf301d6e4ca04bcd6c58fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
