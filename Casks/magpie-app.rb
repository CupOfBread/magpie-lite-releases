cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1328"
  sha256 arm:   "f0d0d80ff03c148eb8829a382995ed22609b41510b10e51b420303dcbdf427cc",
         intel: "bfc3842beffce4539162c615bc811f3a9638bd33741e04bd91c44a9b0572d79a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
