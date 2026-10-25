cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1543"
  sha256 arm:   "07187357d71b83324f0ab62a8683d1109a4750424e6fe6173a38dc7f32afc963",
         intel: "777999c76581ffcaa253eb5c624248f6abac286c09fa88984c9a624a3fcbb6de"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
