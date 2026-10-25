cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1476"
  sha256 arm:   "ae60571244957753fdfc45dd0916cc2d2e4bb716f9c0c86c79ef82f7f5ee6dce",
         intel: "550936ac0fcce7d392b6d20dfec25a0f745b1ff39caa73366427db7a9cf9ac24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
