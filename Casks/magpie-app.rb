cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1785"
  sha256 arm:   "e3744bd115494345b8247643c575e908e9bf7985357755b94f060ac030839a83",
         intel: "6763c4cec41625627fc2402c34d65ef7561908a40d3cdcfb945cd09411fb75a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
