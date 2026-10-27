cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1742"
  sha256 arm:   "c51562d37932463a53aabb14e0839154d80cfaa0aa092886c2fd877cfa4b5eb8",
         intel: "e2f9469900aac03db9cd39370c79760c3c76d4879e8c8972da98eaa18a766f80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
