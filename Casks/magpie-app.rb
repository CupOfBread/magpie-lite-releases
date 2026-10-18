cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1290"
  sha256 arm:   "f06036fb718e7937536e72530b835deca89beaf76d49ba6de4bc6d9db2837d0c",
         intel: "a04dfedd19f0af1e19c1f294fe17fad32a1f5eeab731c0c986d121d08872d98d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
