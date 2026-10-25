cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1520"
  sha256 arm:   "00280b40ecf07266dd0a2491160fb67163f9a1a2fca171908cee0e711db005ec",
         intel: "1a022c267c54c91b29bbf4956e18b94d380c0f312aa05f27389d2d5fc96c5935"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
