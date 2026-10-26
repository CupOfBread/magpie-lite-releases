cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1575"
  sha256 arm:   "e5b6f6b2ffa28b91c3df8049ad98251861870a562cf0edae7deb13aa0cfd0fd8",
         intel: "b38008ed2e9a69c9d2085da66376e4c95ab51684a2ee78c39213d352d7d6c5c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
