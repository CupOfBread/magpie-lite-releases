cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1411"
  sha256 arm:   "0f107066e804ef466826672df785eb307dafe3d61b08342545fb9217b898e72c",
         intel: "d676f5becc3c64a560da309e30625079aafc2424910361a72983e656a7f35068"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
