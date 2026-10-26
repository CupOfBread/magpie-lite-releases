cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1561"
  sha256 arm:   "46c1211a90ae741ea2e53679f3700f3fcabb1f2e6deb36de59440b0d08658a68",
         intel: "c6c051b4f047e42baeb26540bd5a1e404d96cb9509858ba46b48020dd117ba95"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
