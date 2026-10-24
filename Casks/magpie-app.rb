cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1382"
  sha256 arm:   "c906ec9e9cfa78c42fb980ded65194e9b1d745422724028796844d43629fe93b",
         intel: "7ce95d49d49095db3638be3d3637a2f294f5b16d69d71dd415461f3ef50648bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
