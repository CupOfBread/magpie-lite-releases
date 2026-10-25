cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1508"
  sha256 arm:   "18f169714347aa54ad1baa365919e56ce2ad3602c49794f8cca94c63948fd288",
         intel: "3c06d81c31c3d687c33603415a98ced568b2985a9c2d4f3e485cd5611920a059"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
