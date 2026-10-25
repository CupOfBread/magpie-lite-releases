cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1554"
  sha256 arm:   "a5dd8aa604954c1e275586efbdaeb7280fe1b4f3e44016128c99debebe16721a",
         intel: "116ef139772f095c67f5dac34200059c19715dbab4477dd2d625f85ef133c445"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
