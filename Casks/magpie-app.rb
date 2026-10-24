cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1387"
  sha256 arm:   "31833568cda0f194015894c14b7a8874975d25b64b930585f6224532bfbd91a6",
         intel: "d54bfba83619b93002ea33e8c82cd80be96cbcaf1ccd0da63d64297307205369"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
