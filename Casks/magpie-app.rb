cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1673"
  sha256 arm:   "765e82612bb2f33d84ce10afb88b69c24ff256e9deeff6ec299b935c987d8940",
         intel: "002f50dfe4da45a5bafbc5b3684025dbcd27f3ac6884af37a1b66266fb5d7cf6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
