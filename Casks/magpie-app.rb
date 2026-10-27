cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1761"
  sha256 arm:   "48dbcfdd3fcf6e61849435b7f47f033e1eef3335f1fc382c9c10423c927e097f",
         intel: "eaf2406e003d076d86789b71a937f8430e1d20568f5bce7692ccf96b57fb6713"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
