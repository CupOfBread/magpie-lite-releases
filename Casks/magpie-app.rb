cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1717"
  sha256 arm:   "9176345ae5e8826c862f90341718a5f780c829184c351af057800d1715fe2f16",
         intel: "4bb75eb07868d50caf76f46e4134541e68ba75fcfd491619988b3bb82520a3c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
