cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1751"
  sha256 arm:   "0fa9b708b09a76d22f597f5dcc5e8ebc0fb1b90289451f5c89230610d89d105b",
         intel: "b874138a34605b59984c0aa33120f369426663195557631936040fda07defd51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
