cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1612"
  sha256 arm:   "6d484c8ef07ff1ba8d86e2be42a4158ac027680aebe7d7ed3de622d67d347786",
         intel: "040305f0709b7d56944c14034ec6377ae178039fd865e6fc3762ae8455150e29"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
