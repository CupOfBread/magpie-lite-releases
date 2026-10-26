cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1609"
  sha256 arm:   "97acb21bf4aa18df5b80cf3652f873396976088fcf21d604c51326eba2166029",
         intel: "accf226583279074ccec73308fcdc0a243adcef42dc1bce7d10aec21f4ba4cea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
