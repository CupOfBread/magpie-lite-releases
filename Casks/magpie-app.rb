cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1289"
  sha256 arm:   "b258854159e06c16293f95f62233b9763dc77f02f3af066e3977f406ecc39b20",
         intel: "e3a86ca2e2f8cae22e5b20bf094bd352bbc9e699094ae7fde0c27a2f8ad25269"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
