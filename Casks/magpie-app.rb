cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1429"
  sha256 arm:   "eba93ff06126f1bd5de2155376e6a3c9a1171781f46adcc467639c19026735fb",
         intel: "f615b783fcc1e0b62fe993c71d72b8cfc95443b1afd5f3ef6463a5cb97a00bcd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
