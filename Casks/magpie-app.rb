cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1452"
  sha256 arm:   "c37229cf2f564599afcc95f5b64feb37dadfc20b17e208e89dc38475deb9c958",
         intel: "09b5b5b86b3aaf4e457381ea6b5e1e79244736662fb9987ba398b5dd77afd753"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
