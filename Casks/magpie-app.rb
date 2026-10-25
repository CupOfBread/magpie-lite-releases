cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1525"
  sha256 arm:   "a9f42e34e033588110156c0201a37cf5c905f04e34616b121caace71a2d51273",
         intel: "3665db0b623f1dd19416d6b5b859d575618ef69beb87c729e372a89423b25a5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
