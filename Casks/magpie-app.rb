cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1457"
  sha256 arm:   "44bdbe9fd2a777d9c734d060de613b059904ad59d757c1a0faabcbba51823f94",
         intel: "812d9df5b6e03391ad6c7e3b9b2d7e7dfb97c02e0d2e1cac9724a16f49f57bc5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
