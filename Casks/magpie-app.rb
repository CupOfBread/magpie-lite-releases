cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1700"
  sha256 arm:   "09ec21e36136bc8e14488d198eb2284174d2b8b3b20860373c0c49941a192d01",
         intel: "c7c8eb45f71fd89dc08633858d6562651b9ae5e8fc2144c7ab8caba48adf35e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
