cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1819"
  sha256 arm:   "3d34cdd5b152198b48e316f07ae034b118dd48312f596031762cd0dbe4007b82",
         intel: "8f5a1acc8de2afa81ceb4365364b2eb8c22a28c833e6e958a722db47fb90ddd3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
