cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1456"
  sha256 arm:   "2a893578d310a3d728c411db4e023024aef3c473395a96edbe8a7fd66fd548a5",
         intel: "8fe0ea9dbfc68bb1f971d2b00d9389065a5c661580978d87f6fea1e2f5844f5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
