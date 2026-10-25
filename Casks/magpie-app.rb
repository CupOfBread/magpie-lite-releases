cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1535"
  sha256 arm:   "f12efd7ccd71e86716e96246df54c50ffbd844ab40e4ef8e7cb049e71d939b2f",
         intel: "aa2a38e6204f6ef99da988ad3fbb57350725492bca3b5c5f1579115ba839fa7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
