cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1760"
  sha256 arm:   "80879fc09ad877bcaab46f956c3faa7418b9f87711010ead50c4d5d31d069ce3",
         intel: "0d96c2c53fe39fd9636b196fd2fbd19f2b13b964922de786c79e436d1b664fb1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
