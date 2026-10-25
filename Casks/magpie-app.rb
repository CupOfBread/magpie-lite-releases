cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1505"
  sha256 arm:   "108e752dd62df0aee4e5cd7cd78bc6180c9eabe1fdd0116b5b28384a24e28c1b",
         intel: "5ffb609297bc9be18c1375088a7363eab8c747d1c7dfaf7eef2f9bbbbbc1bb6f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
