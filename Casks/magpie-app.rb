cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1397"
  sha256 arm:   "de336a72ca3e2f84f90c6547fa44c29b624e48aed7fc020f13240ea16802ffff",
         intel: "dbeec44e159bfde566154b4f98072f1214af638dd9d01ab9023d2a0d8622e221"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
