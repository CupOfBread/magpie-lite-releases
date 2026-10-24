cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1444"
  sha256 arm:   "c5453c9f79dc357c6543936e347c42a82758acb8cf2532b79b25dda66cecbbb3",
         intel: "79d36cf461d0b63c47e5c84535498fa388f0890ac9f60d431f735c39a5f64220"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
