cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1646"
  sha256 arm:   "ab5e7373e3537769a0f4010b739b5b8a408900bc43ca1ff13ed5ff6e498ae2a0",
         intel: "10f89be6f60d9219af67d042c38bc7eb9dd69028203631eb205650e2f7cc6599"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
