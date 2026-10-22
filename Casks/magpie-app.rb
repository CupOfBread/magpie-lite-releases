cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1326"
  sha256 arm:   "8b7b0d24f81541c64740198c9fba98b70a8632f09ff365bdf22ac864bcd3b4a9",
         intel: "b7b6c8675a4092f6ac3c1f77f5fa7ea5290ae33acbb2ddbb2a4996a2bd85d43a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
