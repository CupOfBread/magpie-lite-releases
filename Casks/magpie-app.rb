cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1408"
  sha256 arm:   "11f56ffcf5d4dafec29aa299312a08436e39ce7ceabbf530c29c6dc1d964a685",
         intel: "2604a15827655d5ef9c7aaa734af59f80440adabdfc6e71dfb6e17de41a4a35e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
