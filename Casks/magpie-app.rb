cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1451"
  sha256 arm:   "a3c17210f24bf7641bd769d11d26c4891c3732c21c3445b945100885f9b6b478",
         intel: "8b3e94e76137f2ba96f7a28d428e4e6d7f69487bed25157c06111f8b6601e379"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
