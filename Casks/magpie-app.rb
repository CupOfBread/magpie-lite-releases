cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1577"
  sha256 arm:   "21be4233a45e5661659b12cf7d82b4574d9d8974225c8c475519694a7a1adef9",
         intel: "bae86e3f4f7aa99935c7708b8bbc64b645bf6b75de6bdec6effd95a5fc6c2529"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
