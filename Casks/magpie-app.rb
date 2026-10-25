cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1558"
  sha256 arm:   "7ca3ab9238d1d33681984b63d8899a2b029496255572ecfea1b42cea2de7117b",
         intel: "9fc7a9a6bf1e565443da8c55448988b86564654e43356bfadc53e6b17990d744"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
