cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1336"
  sha256 arm:   "2005f45605a4f70b43f3ba5d7990cf5bdb126b67fef530964c736ccd4f604744",
         intel: "f94d22da76c50d1687a09a6c6ac0f7fb1d4bac1f4ba687bea978ba3061f6130d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
