cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1656"
  sha256 arm:   "6cf99d8fbd5584f80195209649bad2562f153e3e4d822d27a59bc38c7cbff8b3",
         intel: "db87378b3d16ba5dd09e9516c3491a3583e132d916ddd4967ba507d204f85e10"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
