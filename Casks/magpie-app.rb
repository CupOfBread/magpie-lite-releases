cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1660"
  sha256 arm:   "f62c6fefba8b06dd007027da1254c021774187a7b85ca423ed82117880dbca42",
         intel: "9f5fc17bf915d89f9fc98c7c0b998aa23995de3e3299f95f45a001c1f3c32014"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
