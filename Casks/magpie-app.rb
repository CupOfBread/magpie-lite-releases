cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1588"
  sha256 arm:   "e9c2982f7d087c7ece10617e8f0f2776439b8b678a59026b1c1dd6fb66e12371",
         intel: "80257ee06cebbcc4f5080e31ed51a8424ec142e216e231f935e8faa21efe27a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
