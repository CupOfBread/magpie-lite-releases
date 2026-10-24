cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1404"
  sha256 arm:   "635e45b82a2aab6507977a5a9c569342946822265ff0b99a0836fdd982bd5dc1",
         intel: "b3ff78f7ef8d570a907e652733a70705d9bd12677d2508f7552085b3e95c1a8c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
