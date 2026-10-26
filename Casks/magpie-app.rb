cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1592"
  sha256 arm:   "7677cd101e5d8766cdb937149a40f9510063c72ed42e67999bdc6c85865e5132",
         intel: "3354ef4183e13c134299729b1429fa10b65e7cf8cc691320c9a70a3d0d289836"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
