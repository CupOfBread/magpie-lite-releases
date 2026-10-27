cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1659"
  sha256 arm:   "ababdbb006d24e58e6570a27e6d54799e47cdc14e54c4b75b67c2a983b7b642b",
         intel: "4b1f3dbd19b741da602f11b8bea64a2ffdce95182fed027ac80c08d71b82d9c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
